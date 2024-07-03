import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/database_constants.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/product/log_product_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

import '../../add_product/repository/add_product_repository.dart';
import '../../product_detail/controller/product_detail_controller.dart';

class EditProductController extends GetxController {
  late ProductModel productModel;
  bool isLoading = false;
  bool isSubmitButtonPressed = false;
  late bool isCategoryEmpty;
  late bool isUnitOfMeasurementEmpty;
  late double initialQuantityOnHand;
  late String productId;
  List<CategoryDatabaseModel> categoryListFoundResult = [];
  List<UnitOfMeasurementDatabaseModel> unitOfMeasurementListFoundResult = [];
  final AppController appController = Get.find();
  ProductDatabaseModel productDatabaseModel =
      Get.find<ProductDetailController>().productDatabaseModel;
  static EditProductController get to => Get.find();

  @override
  void onInit() {
    isCategoryEmpty = AddProductRepository.getCategoryCount() == 0;
    isUnitOfMeasurementEmpty =
        AddProductRepository.getUnitOfMeasurementCount() == 0;
    // productModel.unitOfMeasurementId = productDatabaseModel.unitOfMeasurementId;
    String uomName = AddProductRepository.getUnitOfMeasurementName(
        uomId: productDatabaseModel.unitOfMeasurementId);
    String? categoryName;
    if (productDatabaseModel.categoryId != null) {
      categoryName = AddProductRepository.getCategoryName(
          categoryId: productDatabaseModel.categoryId!);
    }
    productModel = ProductModel(
      name: productDatabaseModel.productName,
      description: productDatabaseModel.description,
      localImagePath: productDatabaseModel.localImagePath,
      categoryId: productDatabaseModel.categoryId,
      categoryName: categoryName,
      cost: productDatabaseModel.cost.toString(),
      price: productDatabaseModel.price.toString(),
      quantityOnHand: productDatabaseModel.quantityOnHand.toString(),
      reorderQuantity: productDatabaseModel.reorderQuantity.toString(),
      unitOfMeasurementId: productDatabaseModel.unitOfMeasurementId,
      unitOfMeasurementName: uomName,
      userAssignedProductId: productDatabaseModel.userAssignedProductId,
    );
    initialQuantityOnHand = productDatabaseModel.quantityOnHand;
    productId = productDatabaseModel.productId;
    super.onInit();
  }

// onEditProductSaveButtonPressed() async {
//   isLocalSaveLoading(true);
//   // Future.delayed(const Duration(seconds: 3),() => isLocalSaveLoading(false),);
//   DateTime now = DateTime.now();
//   final Isar isar = Get.find();
//   // await isar.writeTxn(() async {
//   //   final dbProduct =
//   //       await isar.productDatabaseModels.get(productDatabaseModel.id);
//   //   dbProduct?.productName = productInfo.value.name;
//   //   dbProduct?.description = productInfo.value.description;
//   //   dbProduct?.categoryId = productInfo.value.categoryId;
//   //   dbProduct?.cost = getValidNumValue(productInfo.value.cost);
//   //   dbProduct?.price = getValidNumValue(productInfo.value.price);
//   //   dbProduct?.createdByUserId = appController.userId;
//   //   dbProduct?.lastModifiedByUserId = appController.userId;
//   //   dbProduct?.dateCreated = productDatabaseModel.dateCreated;
//   //   dbProduct?.lastDateModified = now;
//   //   dbProduct?.quantityOnHand =
//   //       getValidNumValue(productInfo.value.quantityOnHand);
//   //   dbProduct?.reorderQuantity =
//   //       getValidNumValue(productInfo.value.reorderQuantity);
//   //   dbProduct?.unitOfMeasurementId = productInfo.value.unitOfMeasurementId;
//   //   dbProduct?.localImagePath = productInfo.value.localImagePath;
//   //   dbProduct?.userAssignedProductId =
//   //       productInfo.value.userAssignedProductId;
//   //   await isar.productDatabaseModels.put(dbProduct!);
//   //   await isar.logProductDatabaseModels.put(LogProductDatabaseModel(
//   //     productId: productDatabaseModel.productId,
//   //     productName: productInfo.value.name,
//   //     description: productInfo.value.description,
//   //     categoryId: productInfo.value.categoryId,
//   //     userAssignedProductId: productInfo.value.userAssignedProductId,
//   //     cost: getValidNumValue(productInfo.value.cost),
//   //     price: getValidNumValue(productInfo.value.price),
//   //     quantityOnHand: getValidNumValue(productInfo.value.quantityOnHand),
//   //     reorderQuantity: getValidNumValue(productInfo.value.reorderQuantity),
//   //     unitOfMeasurementId: productInfo.value.unitOfMeasurementId,
//   //     createdByUserId: productDatabaseModel.createdByUserId,
//   //     modifiedByUserId: appController.userId,
//   //     dateCreated: productDatabaseModel.dateCreated,
//   //     dateModified: now,
//   //     localImagePath: productInfo.value.localImagePath,
//   //     onlineImagePath: productDatabaseModel.onlineImagePath,
//   //     addedFrom: editProductDC,
//   //   ));
//   // });
//   ProductListController.to.productList(isar.productDatabaseModels
//       .filter()
//       .productNameContains(ProductListController.to.searchedText.value)
//       .findAllSync());
//   // if (productInfo.value.localImagePath != null) {
//   //   try {
//   //     await Gal.putImage(productInfo.value.localImagePath!,
//   //         album: appNameN);
//   //     File(productInfo.value.localImagePath!).delete();
//   //   } on GalException catch (e) {
//   //     log(e.type.message);
//   //   }
//   // }
//   isLocalSaveLoading(false);
//
//   Get.back();
//   Get.back();
// }
}
