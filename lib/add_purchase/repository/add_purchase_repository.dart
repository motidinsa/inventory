import 'dart:math';

import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/add_purchase/controller/add_purchase_controller.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/image/image_functions.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/product/log_product_database_model.dart';
import 'package:my_inventory/core/model/purchase/log_purchase_all_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_all_database_model.dart';

import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';

import '../../core/functions/helper_functions.dart';
import '../../core/model/product/product_database_model.dart';
import '../../core/model/product/product_model.dart';
import '../../core/model/purchase/purchase_available_database_model.dart';
import '../../core/model/purchase/purchase_model.dart';

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

  static List<VendorDatabaseModel> searchVendor({required String data}) {
    return _isar.vendorDatabaseModels
        .filter()
        .nameContains(data, caseSensitive: false)
        .findAllSync();
  }

  static addPurchase() async {
    AddPurchaseController addPurchaseController = AddPurchaseController.to;
    AppController appController = AppController.to;
    DateTime now = DateTime.now();

    for (int i = 0; i < addPurchaseController.purchaseModels.length; i++) {
      PurchaseModel purchaseModel = addPurchaseController.purchaseModels[i];
      String key = generateDatabaseId(time: now, identifier: i);
      await _isar.writeTxn(() async {
        ProductDatabaseModel? currentProduct = await _isar.productDatabaseModels
            .filter()
            .productIdEqualTo(purchaseModel.productId)
            .findFirst();
        double currentQty = currentProduct!.quantityOnHand +
            double.parse(purchaseModel.quantity);
        LogProductDatabaseModel? logProductDatabaseModel = await _isar
            .logProductDatabaseModels
            .filter()
            .productIdEqualTo(purchaseModel.productId)
            .findFirst();
        currentProduct.cost = double.parse(purchaseModel.cost);
        logProductDatabaseModel!.cost = double.parse(purchaseModel.cost);
        currentProduct.quantityOnHand = currentQty;
        logProductDatabaseModel.quantityOnHand = currentQty;
        if (currentProduct.cost != double.parse(purchaseModel.cost)) {
          currentProduct.lastDateModified = now;
          logProductDatabaseModel.lastDateModified = now;
          currentProduct.lastModifiedByUserId = appController.userId;
          logProductDatabaseModel.lastModifiedByUserId = appController.userId;
        }

        await _isar.productDatabaseModels.put(currentProduct);
        await _isar.logProductDatabaseModels.put(logProductDatabaseModel);
        await _isar.purchaseAvailableDatabaseModels.put(
          PurchaseAvailableDatabaseModel(
            productId: purchaseModel.productId,
            purchaseId: key,
            purchaseDate: addPurchaseController.selectedPurchaseDate ?? now,
            dateCreated: now,
            companyId: appController.companyId,
            addedByUserId: appController.userId,
            vendorId: addPurchaseController.vendorDatabaseModel?.vendorId,
            quantity: double.parse(purchaseModel.quantity),
            cost: double.parse(purchaseModel.cost),
          ),
        );
        await _isar.purchaseAllDatabaseModels.put(
          PurchaseAllDatabaseModel(
            productId: purchaseModel.productId,
            purchaseId: key,
            purchaseDate: addPurchaseController.selectedPurchaseDate ?? now,
            dateCreated: now,
            addedByUserId: appController.userId,
            companyId: appController.companyId,
            vendorId: addPurchaseController.vendorDatabaseModel?.vendorId,
            quantity: double.parse(purchaseModel.quantity),
            cost: double.parse(purchaseModel.cost),
          ),
        );
        await _isar.logPurchaseAllDatabaseModels.put(
          LogPurchaseAllDatabaseModel(
            productId: purchaseModel.productId,
            purchaseId: key,
            purchaseDate: addPurchaseController.selectedPurchaseDate ?? now,
            dateCreated: now,
            addedByUserId: appController.userId,
            companyId: appController.companyId,
            vendorId: addPurchaseController.vendorDatabaseModel?.vendorId,
            quantity: double.parse(purchaseModel.quantity),
            cost: double.parse(purchaseModel.cost),
          ),
        );
      });
    }
  }
}
