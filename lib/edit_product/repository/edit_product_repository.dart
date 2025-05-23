import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:inventory/core/controller/app_controller.dart';
import 'package:inventory/core/functions/image/image_functions.dart';
import 'package:inventory/core/model/category/category_database_model.dart';
import 'package:inventory/core/model/product/log_product_database_model.dart';
import 'package:inventory/core/model/purchase/log_purchase_all_database_model.dart';
import 'package:inventory/core/model/purchase/purchase_all_database_model.dart';
import 'package:inventory/core/model/purchase/purchase_available_database_model.dart';

import 'package:inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

import '../../add_sales/repository/add_sales_repository.dart';
import '../../core/functions/helper_functions.dart';
import '../../core/model/product/product_database_model.dart';
import '../../core/model/product/product_model.dart';
import '../controller/edit_product_controller.dart';

class EditProductRepository {
  static final Isar _isar = Get.find();

  static editProduct() async {
    EditProductController editProductController = EditProductController.to;
    ProductModel productModel = editProductController.productModel;
    AppController appController = AppController.to;
    DateTime now = DateTime.now();
    // String productId = generateDatabaseId(time: now);
    String productName = productModel.name.trim();
    String? description = nullIfEmpty(productModel.description?.trim());
    String? categoryId = productModel.categoryId;
    String? userAssignedProductId =
        nullIfEmpty(productModel.userAssignedProductId?.trim());
    double cost =
        productModel.cost.isNotEmpty ? double.parse(productModel.cost) : 0;
    double price =
        productModel.price.isNotEmpty ? double.parse(productModel.price) : 0;
    String? unitOfMeasurementId = productModel.unitOfMeasurementId;
    double quantityOnHand = productModel.quantityOnHand.isNotEmpty
        ? double.parse(productModel.quantityOnHand)
        : 0;
    double reorderQuantity = productModel.reorderQuantity.isNotEmpty
        ? double.parse(productModel.reorderQuantity)
        : 0;
    String userId = appController.userId;
    String companyId = appController.companyId;

    await _isar.writeTxn(() async {
      if (productModel.localImagePath != null) {
        await saveImageToInternalStorage(
            filePath: EditProductController.to.productModel.localImagePath!);
      }

      List<PurchaseAvailableDatabaseModel> purchases =
          await AddSalesRepository.getAvailablePurchases(
              productId: editProductController.productId);
      // List<PurchaseAllDatabaseModel> allPurchases =
      //     await AddSalesRepository.getAllPurchases(
      //         productId: editProductController.productId);
      if (quantityOnHand < editProductController.initialQuantityOnHand) {
        double remaining =
            editProductController.initialQuantityOnHand - quantityOnHand;

        while (remaining != 0) {
          if (remaining <= purchases.last.quantity) {
            if (purchases.last.quantity > remaining) {
              purchases.last.quantity -= remaining;
              purchases.last.lastDateModified = now;
              purchases.last.lastModifiedByUserId = appController.userId;
              // allPurchases.last.quantity -= remaining;
              // allPurchases.last.lastDateModified = now;
              // allPurchases.last.lastModifiedByUserId = appController.userId;
              await _isar.purchaseAvailableDatabaseModels.put(purchases.last);
              // await _isar.purchaseAllDatabaseModels.put(allPurchases.last);
            } else {
              await _isar.purchaseAvailableDatabaseModels
                  .delete(purchases.last.id);
            }
            remaining = 0;
          } else {
            remaining -= purchases.last.quantity;
            purchases.last.lastDateModified = now;
            purchases.last.lastModifiedByUserId = appController.userId;
            // allPurchases.last.lastDateModified = now;
            // allPurchases.last.lastModifiedByUserId = appController.userId;
            await _isar.purchaseAvailableDatabaseModels
                .delete(purchases.last.id);
            purchases.removeLast();
            // allPurchases.removeLast();
          }
        }
      } else if (quantityOnHand > editProductController.initialQuantityOnHand) {
        double remaining =
            quantityOnHand - editProductController.initialQuantityOnHand;
        if (cost == editProductController.productDatabaseModel.cost && purchases.isNotEmpty) {
          purchases.last.quantity += remaining;
          purchases.last.lastDateModified = now;
          purchases.last.lastModifiedByUserId = appController.userId;
          await _isar.purchaseAvailableDatabaseModels.put(purchases.last);
        } else {
          String key = generateDatabaseId(
            time: now,
          );
          await _isar.purchaseAvailableDatabaseModels
              .put(PurchaseAvailableDatabaseModel(
            cost: cost,
            productId: editProductController.productDatabaseModel.productId,
            companyId: companyId,
            lastDateModified: now,
            lastModifiedByUserId: appController.userId,
            addedByUserId: appController.userId,
            dateCreated: now,
            purchaseDate: now,
            quantity: remaining,
            purchaseId: key,
            vendorId: purchases.isNotEmpty?purchases.first.vendorId:null,
          ));
        }
      }
      editProductController.productDatabaseModel
        ..productName = productName
        ..description = description
        ..categoryId = categoryId
        ..userAssignedProductId = userAssignedProductId
        ..cost = cost
        ..price = price
        ..unitOfMeasurementId = unitOfMeasurementId
        ..quantityOnHand = quantityOnHand
        ..reorderQuantity = reorderQuantity
        ..createdByUserId = userId
        ..companyId = companyId
        ..lastDateModified = now
        ..lastModifiedByUserId = appController.userId
        ..localImagePath = productModel.localImagePath;
      await _isar.productDatabaseModels
          .put(editProductController.productDatabaseModel);

      // await _isar.purchaseAllDatabaseModels
      //     .put(PurchaseAllDatabaseModel(
      //   cost: cost,
      //   productId: editProductController.productDatabaseModel.productId,
      //   companyId: companyId,
      //   lastDateModified: now,
      //   lastModifiedByUserId: appController.userId,
      //   addedByUserId: appController.userId,
      //   dateCreated: now,
      //   purchaseDate: now,
      //   quantity: quantityOnHand,
      //   purchaseId: key,
      //   vendorId: purchases.isNotEmpty?purchases.first.vendorId:null,
      // ));

      // if (productModel.quantityOnHand.isNotEmpty) {
      //   _isar.logPurchaseAllDatabaseModels.put(LogPurchaseAllDatabaseModel(
      //     addedByUserId: userId,
      //     companyId: companyId,
      //     cost: cost,
      //     productId: productId,
      //     purchaseId: productId,
      //     quantity: quantityOnHand,
      //     dateCreated: now,
      //     purchaseDate: now,
      //   ));
      //   _isar.purchaseAvailableDatabaseModels
      //       .put(PurchaseAvailableDatabaseModel(
      //     addedByUserId: userId,
      //     companyId: companyId,
      //     cost: cost,
      //     productId: productId,
      //     purchaseId: productId,
      //     quantity: quantityOnHand,
      //     dateCreated: now,
      //     purchaseDate: now,
      //   ));
      // }

      // await _isar.logProductDatabaseModels.put(
      //   LogProductDatabaseModel(
      //     productName: productName,
      //     productId: productId,
      //     description: description,
      //     categoryId: categoryId,
      //     userAssignedProductId: userAssignedProductId,
      //     cost: cost,
      //     price: price,
      //     unitOfMeasurementId: unitOfMeasurementId,
      //     quantityOnHand: quantityOnHand,
      //     reorderQuantity: reorderQuantity,
      //     createdByUserId: userId,
      //     companyId: companyId,
      //     dateCreated: now,
      //     localImagePath: productModel.localImagePath,
      //   ),
      // );
    });
  }

  static void clearProductImagePath({required String productId}) async {
    ProductDatabaseModel productDatabaseModel = _isar.productDatabaseModels
        .filter()
        .productIdEqualTo(productId)
        .findAllSync()
        .last;
    await _isar.writeTxn(() async {
      productDatabaseModel.localImagePath = null;
      await _isar.productDatabaseModels.put(productDatabaseModel);
    });
  }
}
