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
import 'package:inventory/core/routes/route_names.dart';

import '../../core/functions/helper_functions.dart';
import '../../core/model/product/product_database_model.dart';
import '../../core/model/product/product_model.dart';
import '../../product_list/controller/product_list_controller.dart';
import '../../product_list/repository/product_list_repository.dart';
import '../controller/add_product_controller.dart';

class AddProductRepository {
  static final Isar _isar = Get.find();

  static List<CategoryDatabaseModel> getAllCategory() {
    return _isar.categoryDatabaseModels.where().findAllSync();
  }

  static int getCategoryCount() {
    return _isar.categoryDatabaseModels.countSync();
  }

  static List<CategoryDatabaseModel> searchCategory({required String data}) {
    return _isar.categoryDatabaseModels
        .filter()
        .categoryNameContains(data, caseSensitive: false)
        .findAllSync();
  }

  static String getCategoryName({required String categoryId}) {
    return _isar.categoryDatabaseModels
        .filter()
        .categoryIdEqualTo(categoryId)
        .findFirstSync()!
        .categoryName;
  }

  static List<UnitOfMeasurementDatabaseModel> getAllUnitOfMeasurement() {
    return _isar.unitOfMeasurementDatabaseModels.where().findAllSync();
  }

  static int getUnitOfMeasurementCount() {
    return _isar.unitOfMeasurementDatabaseModels.countSync();
  }

  static List<UnitOfMeasurementDatabaseModel> searchUnitOfMeasurement({
    required String data,
  }) {
    return _isar.unitOfMeasurementDatabaseModels
        .filter()
        .nameContains(data, caseSensitive: false)
        .findAllSync();
  }

  static UnitOfMeasurementDatabaseModel? getDefaultUnitOfMeasurement() {
    return _isar.unitOfMeasurementDatabaseModels
        .filter()
        .nameEqualTo('Pcs')
        .findFirstSync();
  }

  static String getUnitOfMeasurementName({required String uomId}) {
    return _isar.unitOfMeasurementDatabaseModels
        .filter()
        .uomIdEqualTo(uomId)
        .findFirstSync()!
        .name;
  }

  static addProduct() async {
    ProductModel productModel = AddProductController.to.productModel;
    AppController appController = AppController.to;
    DateTime now = DateTime.now();
    String productId = generateDatabaseId(time: now);
    String productName = productModel.name.trim();
    String? description = nullIfEmpty(productModel.description?.trim());
    String? categoryId = productModel.categoryId;
    String? userAssignedProductId = nullIfEmpty(
      productModel.userAssignedProductId?.trim(),
    );
    double cost =
        productModel.cost.isNotEmpty ? double.parse(productModel.cost) : 0;
    double price =
        productModel.price.isNotEmpty ? double.parse(productModel.price) : 0;
    String? unitOfMeasurementId = productModel.unitOfMeasurementId;
    double quantityOnHand =
        productModel.quantityOnHand.isNotEmpty
            ? double.parse(productModel.quantityOnHand)
            : 0;
    double reorderQuantity =
        productModel.reorderQuantity.isNotEmpty
            ? double.parse(productModel.reorderQuantity)
            : 0;
    String userId = appController.userId;
    String companyId = appController.companyId;

    await _isar.writeTxn(() async {
      if (productModel.localImagePath != null) {
        await saveImageToInternalStorage(
          filePath: AddProductController.to.productModel.localImagePath!,
        );
      }
      final ProductDatabaseModel productDatabaseModel = ProductDatabaseModel(
        productName: productName,
        productId: productId,
        description: description,
        categoryId: categoryId,
        userAssignedProductId: userAssignedProductId,
        cost: cost,
        price: price,
        unitOfMeasurementId: unitOfMeasurementId,
        quantityOnHand: quantityOnHand,
        reorderQuantity: reorderQuantity,
        createdByUserId: userId,
        companyId: companyId,
        dateCreated: now,
        localImagePath: productModel.localImagePath,
      );
      await _isar.productDatabaseModels.put(productDatabaseModel);
      // if (isNumeric(productModel.quantityOnHand)) {
      //   await _isar.purchaseAllDatabaseModels.put(
      //     PurchaseAllDatabaseModel(
      //       productId: productId,
      //       addedByUserId: userId,
      //       companyId: companyId,
      //       cost: cost,
      //       purchaseId: productId,
      //       quantity: quantityOnHand,
      //       dateCreated: now,
      //       purchaseDate: now,
      //     ),
      //   );
      // }
      if (productModel.quantityOnHand.isNotEmpty) {
        _isar.logPurchaseAllDatabaseModels.put(
          LogPurchaseAllDatabaseModel(
            addedByUserId: userId,
            companyId: companyId,
            cost: cost,
            productId: productId,
            purchaseId: productId,
            quantity: quantityOnHand,
            dateCreated: now,
            purchaseDate: now,
          ),
        );
        _isar.purchaseAvailableDatabaseModels.put(
          PurchaseAvailableDatabaseModel(
            addedByUserId: userId,
            companyId: companyId,
            cost: cost,
            productId: productId,
            purchaseId: productId,
            quantity: quantityOnHand,
            dateCreated: now,
            purchaseDate: now,
          ),
        );
      }
      await _isar.logProductDatabaseModels.put(
        LogProductDatabaseModel(
          productName: productName,
          productId: productId,
          description: description,
          categoryId: categoryId,
          userAssignedProductId: userAssignedProductId,
          cost: cost,
          price: price,
          unitOfMeasurementId: unitOfMeasurementId,
          quantityOnHand: quantityOnHand,
          reorderQuantity: reorderQuantity,
          createdByUserId: userId,
          companyId: companyId,
          dateCreated: now,
          localImagePath: productModel.localImagePath,
        ),
      );
    });
    if (Get.previousRoute == RouteName.productList) {
      ProductListController productListController = ProductListController.to;
      productListController.productList =
          ProductListRepository.getAllProducts();
      productListController.isEmpty = false;
      productListController.update();
    }
  }

  static void clearProductImagePath({required String productId}) async {
    ProductDatabaseModel productDatabaseModel =
        _isar.productDatabaseModels
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
