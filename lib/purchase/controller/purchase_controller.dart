import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/product/log_product_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_all_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_available_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_model.dart';
import 'package:my_inventory/main.dart';

import '../../core/constants/database_constants.dart';

class PurchaseController extends GetxController {
  DateTime now = DateTime.now();
  List<ProductDatabaseModel> products = [];
  var searchProductFoundResult = [].obs;
  RxString subtotal = ''.obs;
  RxString discount = ''.obs;
  RxString total = ''.obs;
  RxString emptyString = ''.obs;
  var isLocalSaveLoading = false.obs;
  var purchaseModels = [
    PurchaseModel(
      productId: '',
      productName: '',
      quantity: '',
      totalAmount: 0,
      cost: '',
      purchaseDate: DateTime.now(),
    ).obs
  ].obs;

  @override
  void onInit() {
    AppController.to.currentPages.add(purchaseN());
    products = isar.productDatabaseModels.where().findAllSync();
    searchProductFoundResult(products);
    super.onInit();
  }

  addPurchaseProduct() {
    purchaseModels.add(
      PurchaseModel(
        productId: '',
        productName: '',
        quantity: '',
        totalAmount: 0,
        cost: '',
        purchaseDate: DateTime.now(),
      ).obs,
    );
  }

  savePurchaseProductToDB() async {
    DateTime now = DateTime.now();
    // isLocalSaveLoading(false);
    // var salesBox = Hive.box<SalesModel>('sales');
    // var productsBox = Hive.box<ProductModel>('products');
    // final DateFormat dateFormatter = DateFormat('yyyyMMdd_HmsS');
    // List
    // for (var element in purchaseModels) {
    //   String key = dateFormatter.format(DateTime.now());
    //   await salesBox.put(
    //     key,
    //     SalesModel(
    //       id: key,
    //       date: element.value.date,
    //       dateAdded: now,
    //       dateModified: now,
    //       price: element.value.price,
    //       totalAmount: element.value.totalAmount,
    //       productId: element.value.productId,
    //       customerId: element.value.customerId,
    //       customerName: element.value.customerName,
    //       productName: element.value.productName,
    //       quantity: element.value.quantity,
    //       reference: element.value.reference,
    //     ),
    //   );
    //
    //   var currentProduct = productsBox.get(element.value.productId);
    //   currentProduct!.quantityOnHand -= element.value.quantity;
    //   productsBox.put(element.value.productId, currentProduct);
    // }

    // isLocalSaveLoading(false);
    // Get.back();

    isLocalSaveLoading(true);
    for (int i = 0; i < purchaseModels.length; i++) {
      PurchaseModel purchaseModel = purchaseModels[i].value;
      String key = generateDatabaseId(time: now, identifier: i);
      await isar.writeTxn(() async {
        ProductDatabaseModel? currentProduct = await isar.productDatabaseModels
            .filter()
            .productIdEqualTo(purchaseModel.productId)
            .findFirst();
        double currentQty = currentProduct!.quantityOnHand +
            double.parse(purchaseModel.quantity);
        currentProduct.cost = double.parse(purchaseModel.cost);
        currentProduct.quantityOnHand = currentQty;
        currentProduct.lastDateModified = now;
        currentProduct.lastModifiedByUserId = AppController.to.userId.value;

        await isar.productDatabaseModels.put(currentProduct);
        await isar.purchaseAvailableDatabaseModels.put(
          PurchaseAvailableDatabaseModel(
            productId: purchaseModel.productId,
            purchaseId: key,
            purchaseDate: purchaseModel.purchaseDate,
            dateCreated: now,
            customerId: purchaseModel.customerId,
            vendorId: purchaseModel.vendorId,
            quantity: double.parse(purchaseModel.quantity),
            cost: double.parse(purchaseModel.cost),
          ),
        );
        await isar.purchaseAllDatabaseModels.put(
          PurchaseAllDatabaseModel(
            productId: purchaseModel.productId,
            purchaseId: key,
            purchaseDate: purchaseModel.purchaseDate,
            dateCreated: now,
            customerId: purchaseModel.customerId,
            vendorId: purchaseModel.vendorId,
            quantity: double.parse(purchaseModel.quantity),
            cost: double.parse(purchaseModel.cost),
          ),
        );

        await isar.logProductDatabaseModels.put(LogProductDatabaseModel(
          productName: currentProduct.productName,
          description: currentProduct.description,
          categoryId: currentProduct.categoryId,
          cost: double.parse(purchaseModel.cost),
          price: currentProduct.price,
          createdByUserId: currentProduct.createdByUserId,
          dateCreated: currentProduct.dateCreated,
          quantityOnHand: currentQty,
          reorderQuantity: currentProduct.reorderQuantity,
          unitOfMeasurementId: currentProduct.unitOfMeasurementId,
          localImagePath: currentProduct.localImagePath,
          userAssignedProductId: currentProduct.userAssignedProductId,
          productId: currentProduct.productId,
          dateModified: now,
          modifiedByUserId: AppController.to.userId.value,
          addedFrom: purchaseDC,
        ));
      });
    }
    // purchaseModels.asMap().forEach((index, purchaseModel) async {
    //
    // });
    isLocalSaveLoading(false);
    Get.back();
  }
}
