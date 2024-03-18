import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/product/log_product_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/main.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';

class EditProductController extends GetxController {
  final ProductDatabaseModel productDatabaseModel;

  EditProductController({required this.productDatabaseModel});

  late Rx<ProductModel> productInfo;
  final AppController appController = Get.find();
  var emptyText = ''.obs;
  var isLocalSaveLoading = false.obs;
  var isOnlineSaveLoading = false.obs;

  var categoryListFoundResult = [].obs;
  var unitOfMeasurementListFoundResult = [].obs;
  final formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    appController.currentPages.add(editProductN);
    String? categoryName;
    late String uomName;
    if (productDatabaseModel.categoryId != null) {
      categoryName = isar.categoryDatabaseModels
          .filter()
          .categoryIdEqualTo(productDatabaseModel.categoryId!)
          .findFirstSync()
          ?.categoryName;
    }
    uomName = isar.unitOfMeasurementDatabaseModels
        .filter()
        .uomIdEqualTo(productDatabaseModel.unitOfMeasurementId)
        .findFirstSync()!
        .name;
    productInfo = ProductModel(
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
      // id: productDatabaseModel.id,
      userAssignedProductId: productDatabaseModel.userAssignedProductId,
    ).obs;
    super.onInit();
  }

  onEditProductSaveButtonPressed() async {
    isLocalSaveLoading(true);
    // Future.delayed(const Duration(seconds: 3),() => isLocalSaveLoading(false),);
    // var productsBox = Hive.box<ProductDatabaseModel>('products');
    DateTime now = DateTime.now();
    await isar.writeTxn(() async {
      final dbProduct =
          await isar.productDatabaseModels.get(productDatabaseModel.id);
      dbProduct?.productName = productInfo.value.name;
      dbProduct?.description = productInfo.value.description;
      dbProduct?.categoryId = productInfo.value.categoryId;
      dbProduct?.cost = getValidNumValue(productInfo.value.cost);
      dbProduct?.price = getValidNumValue(productInfo.value.price);
      dbProduct?.createdByUserId = appController.userId.value;
      dbProduct?.lastModifiedByUserId = appController.userId.value;
      dbProduct?.dateCreated = productDatabaseModel.dateCreated;
      dbProduct?.lastDateModified = now;
      dbProduct?.quantityOnHand =
          getValidNumValue(productInfo.value.quantityOnHand);
      dbProduct?.reorderQuantity =
          getValidNumValue(productInfo.value.reorderQuantity);
      dbProduct?.unitOfMeasurementId = productInfo.value.unitOfMeasurementId;
      dbProduct?.localImagePath = productInfo.value.localImagePath;
      dbProduct?.userAssignedProductId =
          productInfo.value.userAssignedProductId;
      await isar.productDatabaseModels.put(dbProduct!);
      await isar.logProductDatabaseModels.put(
        LogProductDatabaseModel()
          ..productId = productDatabaseModel.productId
          ..productName = productInfo.value.name
          ..description = productInfo.value.description
          ..categoryId = productInfo.value.categoryId
          ..userAssignedProductId = productInfo.value.userAssignedProductId
          ..cost = getValidNumValue(productInfo.value.cost)
          ..price = getValidNumValue(productInfo.value.price)
          ..quantityOnHand = getValidNumValue(productInfo.value.quantityOnHand)
          ..reorderQuantity =
              getValidNumValue(productInfo.value.reorderQuantity)
          ..unitOfMeasurementId = productInfo.value.unitOfMeasurementId
          ..createdByUserId = productDatabaseModel.createdByUserId
          ..modifiedByUserId = appController.userId.value
          ..dateCreated = productDatabaseModel.dateCreated
          ..dateModified = now
          ..localImagePath = productInfo.value.localImagePath
          ..onlineImagePath = productDatabaseModel.onlineImagePath,
      );
    });
    ProductListController.to.productList(isar.productDatabaseModels
        .filter()
        .productNameContains(ProductListController.to.searchedText.value)
        .findAllSync());
    // if (productInfo.value.localImagePath != null) {
    //   try {
    //     await Gal.putImage(productInfo.value.localImagePath!,
    //         album: appNameN());
    //     File(productInfo.value.localImagePath!).delete();
    //   } on GalException catch (e) {
    //     log(e.type.message);
    //   }
    // }
    isLocalSaveLoading(false);

    Get.back();
    Get.back();
  }
}
