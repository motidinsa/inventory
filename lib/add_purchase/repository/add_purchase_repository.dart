import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/add_purchase/controller/add_purchase_controller.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/image/image_functions.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/product/log_product_database_model.dart';

import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';

import '../../core/functions/helper_functions.dart';
import '../../core/model/product/product_database_model.dart';
import '../../core/model/product/product_model.dart';

class AddPurchaseRepository {
  static final Isar _isar = Get.find();

  static List<ProductDatabaseModel> getAllProduct() {
    return _isar.productDatabaseModels.where().findAllSync();
  }

  static int getProductCount() {
    return _isar.categoryDatabaseModels.countSync();
  }

  static List<ProductDatabaseModel> searchProduct({required String data}) {
    return _isar.productDatabaseModels
        .filter()
        .productNameContains(data, caseSensitive: false)
        .findAllSync();
  }

  static List<VendorDatabaseModel> getAllVendors() {
    return _isar.vendorDatabaseModels.where().findAllSync();
  }

  static int getVendorCount() {
    return _isar.vendorDatabaseModels.countSync();
  }

  static List<VendorDatabaseModel> searchVendor(
      {required String data}) {
    return _isar.vendorDatabaseModels
        .filter()
        .nameContains(data, caseSensitive: false)
        .findAllSync();
  }


  static addPurchase() async {
    AddPurchaseController addPurchaseController = AddPurchaseController.to;
    DateTime now = DateTime.now();

    for (int i = 0; i < purchaseModels.length; i++) {
      PurchaseModel purchaseModel = purchaseModels[i];
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
            purchaseDate: purchaseDate,
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
            purchaseDate: purchaseDate,
            dateCreated: now,
            customerId: purchaseModel.customerId,
            vendorId: purchaseModel.vendorId,
            quantity: double.parse(purchaseModel.quantity),
            cost: double.parse(purchaseModel.cost),
          ),
        );

        // await isar.logProductDatabaseModels.put(LogProductDatabaseModel(
        //   productName: currentProduct.productName,
        //   description: currentProduct.description,
        //   categoryId: currentProduct.categoryId,
        //   cost: double.parse(purchaseModel.cost),
        //   price: currentProduct.price,
        //   createdByUserId: currentProduct.createdByUserId,
        //   dateCreated: currentProduct.dateCreated,
        //   quantityOnHand: currentQty,
        //   reorderQuantity: currentProduct.reorderQuantity,
        //   unitOfMeasurementId: currentProduct.unitOfMeasurementId,
        //   localImagePath: currentProduct.localImagePath,
        //   userAssignedProductId: currentProduct.userAssignedProductId,
        //   productId: currentProduct.productId,
        //   dateModified: now,
        //   modifiedByUserId: AppController.to.userId.value,
        //   addedFrom: purchaseDC,
        // ));
      });
    }
    // purchaseModels.asMap().forEach((index, purchaseModel) async {
    //
    // });
    isLocalSaveLoading(false);
    Get.back();
  }
}
