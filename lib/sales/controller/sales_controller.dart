import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_available_database_model.dart';
import 'package:my_inventory/core/model/sales/quantity_cost_database_model.dart';
import 'package:my_inventory/main.dart';
import 'package:my_inventory/core/model/sales/sales_model.dart';

import '../../core/constants/database_constants.dart';
import '../../core/model/product/log_product_database_model.dart';

class SalesController extends GetxController {
  DateTime now = DateTime.now();
  List<ProductDatabaseModel> products = [];
  var searchProductFoundResult = [].obs;
  RxString subtotal = ''.obs;
  RxString discount = ''.obs;
  RxString total = ''.obs;
  RxString customerName = defaultN.obs;
  RxString emptyString = ''.obs;
  var isLocalSaveLoading = false.obs;
  var salesModels = [
    SalesModel(
      salesDate: DateTime.now(),
      customerId: '',
      productId: '',
      productName: '',
      quantity: '',
      price: '',
      totalAmount: 0,
    ).obs
  ].obs;

  @override
  void onInit() {
    AppController.to.currentPages.add(salesN());
    products = isar.productDatabaseModels.where().findAllSync();
    searchProductFoundResult(products);
    super.onInit();
  }

  addSalesProduct() {
    salesModels.add(
      SalesModel(
              salesDate: DateTime.now(),
              customerId: '',
              productId: '',
              productName: '',
              quantity: '',
              price: '',
              totalAmount: 0)
          .obs,
    );
  }

  saveSalesProductToDB() async {
    isLocalSaveLoading(true);
    // var salesBox = Hive.box<SalesModel>('sales');
    // var productsBox = Hive.box<ProductDatabaseModel>('products');
    // final DateFormat dateFormatter = DateFormat('yyyyMMdd_HmsS');
// var temp = {}

    salesModels.asMap().forEach((index, element) async {
      DateTime now = DateTime.now();
      String salesId = generateDatabaseId(time: now, identifier: index);
      List<PurchaseAvailableDatabaseModel> purchases = isar
          .purchaseAvailableDatabaseModels
          .filter()
          .group((q) => q
              .productIdEqualTo(element.value.productId)
              .and()
              .quantityGreaterThan(0))
          .findAllSync();
      ProductDatabaseModel product = isar.productDatabaseModels
          .filter()
          .productIdEqualTo(element.value.productId)
          .findFirstSync()!;
      LogProductDatabaseModel logProduct = isar.logProductDatabaseModels
          .filter()
          .productIdEqualTo(element.value.productId)
          .findFirstSync()!;
      double remaining = double.parse(element.value.quantity);
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
            purchases.first.quantity -= remaining;
            if (purchases.first.quantity > remaining) {
              await isar.purchaseAvailableDatabaseModels.put(purchases.first);
            } else {
              await isar.purchaseAvailableDatabaseModels
                  .delete(purchases.first.id);
            }
            remaining = 0;
          } else if (double.parse(element.value.quantity) >
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
        product.quantityOnHand -= double.parse(element.value.quantity);
        product.lastDateModified = now;
        product.lastModifiedByUserId = AppController.to.userId.value;
        await isar.productDatabaseModels.put(product);
        await isar.logProductDatabaseModels.put(
          LogProductDatabaseModel(
            productId: logProduct.productId,
            productName: logProduct.productName,
            cost: logProduct.cost,
            price: logProduct.price,
            quantityOnHand: logProduct.quantityOnHand-double.parse(element.value.quantity),
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
      isLocalSaveLoading(false);
    });
  }
}
