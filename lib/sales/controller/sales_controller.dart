import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_available_database_model.dart';
import 'package:my_inventory/core/model/sales/quantity_cost_database_model.dart';
import 'package:my_inventory/main.dart';
import 'package:my_inventory/sales/model/sales_model.dart';

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
      date: DateTime.now(),
      dateAdded: DateTime.now(),
      dateModified: DateTime.now(),
      customerId: '',
      customerName: '',
      productId: '',
      productName: '',
      quantity: '',
      reference: '',
      totalAmount: 0,
      price: '',
      id: '',
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
        date: DateTime.now(),
        dateAdded: DateTime.now(),
        dateModified: DateTime.now(),
        customerId: '',
        customerName: '',
        productId: '',
        productName: '',
        quantity: '',
        reference: '',
        totalAmount: 0,
        price: '',
        id: '',
      ).obs,
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
      double remaining = double.parse(element.value.quantity);
      await isar.writeTxn(() async {
        while (remaining != 0) {
          if (remaining <= purchases.first.quantity) {
            await isar.quantityCostDatabaseModels.put(QuantityCostDatabaseModel(
              salesId: salesId,
              purchaseId: purchases.first.purchaseId,
              quantity: remaining,
            ));
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

          // String key = dateFormatter.format(DateTime.now());

          // var currentProduct = productsBox.get(element.value.productId);
          // currentProduct!.quantityOnHand = (currentProduct.quantityOnHand -
          //     double.parse(element.value.quantity));
          // await productsBox.put(element.value.productId, currentProduct);
        }
      });
      isLocalSaveLoading(false);
    });
  }
}
