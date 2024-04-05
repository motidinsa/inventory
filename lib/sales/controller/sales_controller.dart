import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/database_constants.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/product/log_product_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_available_database_model.dart';
import 'package:my_inventory/core/model/sales/group_sales_database_model.dart';
import 'package:my_inventory/core/model/sales/quantity_cost_database_model.dart';
import 'package:my_inventory/core/model/sales/sales_database_model.dart';
import 'package:my_inventory/core/model/sales/sales_model.dart';
import 'package:my_inventory/core/model/sales/sales_payment_database_model.dart';
import 'package:my_inventory/main.dart';

class SalesController extends GetxController {
  DateTime now = DateTime.now();
  RxList<ProductDatabaseModel> searchProductFoundResult =
      <ProductDatabaseModel>[].obs;
  RxList<CustomerDatabaseModel> searchCustomerFoundResult =
      <CustomerDatabaseModel>[].obs;
  RxString subtotal = ''.obs;
  String? customerId;
  String? customerName;
  String? customerPhone;
  String? customerAddress;
  DateTime salesDate = DateTime.now();
  RxString discount = ''.obs;
  RxString total = ''.obs;
  String cash = '';
  String transfer = '';
  String credit = '0';

  // RxString emptyString = ''.obs;
  var isLocalSaveLoading = false.obs;
  var salesModels = [
    SalesModel(
      customerId: '',
      productId: '',
      productName: '',
      quantity: '',
      price: '',
      totalAmount: 0,
    ).obs
  ].obs;

  static SalesController get to => Get.find();

  @override
  void onInit() {
    AppController.to.currentPages.add(salesN());
    searchProductFoundResult(isar.productDatabaseModels.where().findAllSync());
    searchCustomerFoundResult(
        isar.customerDatabaseModels.where().findAllSync());
    super.onInit();
  }

  addSalesProduct() {
    unFocus();
    salesModels.add(
      SalesModel(
        customerId: customerId,
        productId: '',
        productName: '',
        quantity: '',
        price: '',
        totalAmount: 0,
      ).obs,
    );
  }

  saveSalesProductToDB() async {
    isLocalSaveLoading(true);
    List<SalesDatabaseModel> salesDatabaseModels = [];
    String groupSalesId =
        generateDatabaseId(time: DateTime.now(), identifier: 'group');
    String salesPaymentId =
        generateDatabaseId(time: DateTime.now(), identifier: 'p_id');
    for (int i = 0; i < salesModels.length; i++) {
      SalesModel salesModel = salesModels[i].value;
      DateTime now = DateTime.now();
      String salesId = generateDatabaseId(time: now, identifier: i);
      List<PurchaseAvailableDatabaseModel> purchases = isar
          .purchaseAvailableDatabaseModels
          .filter()
          .group((q) => q
              .productIdEqualTo(salesModel.productId)
              .and()
              .quantityGreaterThan(0))
          .findAllSync();
      ProductDatabaseModel product = isar.productDatabaseModels
          .filter()
          .productIdEqualTo(salesModel.productId)
          .findFirstSync()!;
      LogProductDatabaseModel logProduct = isar.logProductDatabaseModels
          .filter()
          .productIdEqualTo(salesModel.productId)
          .findFirstSync()!;
      double remaining = double.parse(salesModel.quantity);
      await isar.writeTxn(() async {
        while (remaining != 0) {
          if (remaining <= purchases.first.quantity) {
            await isar.quantityCostDatabaseModels.put(
              QuantityCostDatabaseModel(
                salesId: salesId,
                purchaseId: purchases.first.purchaseId,
                quantity: remaining,
              ),
            );

            if (purchases.first.quantity > remaining) {
              purchases.first.quantity -= remaining;
              await isar.purchaseAvailableDatabaseModels.put(purchases.first);
            } else {
              await isar.purchaseAvailableDatabaseModels
                  .delete(purchases.first.id);
            }
            remaining = 0;
          } else if (double.parse(salesModel.quantity) >
              purchases.first.quantity) {
            remaining -= purchases.first.quantity;

            await isar.quantityCostDatabaseModels.put(QuantityCostDatabaseModel(
              salesId: salesId,
              purchaseId: purchases.first.purchaseId,
              quantity: purchases.first.quantity,
            ));
            await isar.purchaseAvailableDatabaseModels
                .delete(purchases.first.id);
            purchases.removeAt(0);
          }
        }
        double quantityOnHand =
            product.quantityOnHand - double.parse(salesModel.quantity);
        product.quantityOnHand = quantityOnHand;
        product.lastDateModified = now;
        product.lastModifiedByUserId = AppController.to.userId.value;
        await isar.productDatabaseModels.put(product);
        salesDatabaseModels.add(
          SalesDatabaseModel(
              productId: salesModel.productId,
              salesId: salesId,
              groupSalesId: groupSalesId,
              salesDate: salesDate,
              dateCreated: now,
              quantity: double.parse(salesModel.quantity),
              price: double.parse(salesModel.price),
              customerId: salesModel.customerId,
              salesPaymentId: salesPaymentId),
        );
        await isar.logProductDatabaseModels.put(
          LogProductDatabaseModel(
            productId: logProduct.productId,
            productName: logProduct.productName,
            cost: logProduct.cost,
            price: logProduct.price,
            quantityOnHand: quantityOnHand,
            reorderQuantity: logProduct.reorderQuantity,
            unitOfMeasurementId: logProduct.unitOfMeasurementId,
            createdByUserId: logProduct.createdByUserId,
            modifiedByUserId: AppController.to.userId.value,
            dateCreated: logProduct.dateCreated,
            dateModified: now,
            addedFrom: salesDC,
          ),
        );
      });
    }
    await isar.writeTxn(() async {
      isar.salesDatabaseModels.putAll(salesDatabaseModels);
      isar.groupSalesDatabaseModels.put(
        GroupSalesDatabaseModel(
          groupSalesId: groupSalesId,
          discount:
              isNumeric(discount.value) ? double.parse(discount.value) : 0,
        ),
      );
      isar.salesPaymentDatabaseModels.put(
        SalesPaymentDatabaseModel(
          cash: double.parse(cash),
          transfer: double.parse(transfer),
          credit: double.parse(credit),
          customerId: customerId,
          groupSalesId: groupSalesId,
          salesPaymentId: salesPaymentId,
        ),
      );
    });

    isLocalSaveLoading(false);
  }
}
