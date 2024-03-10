import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
// import 'package:my_inventory/core/model/product/product_model/main.dart';

import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/product/product_model.dart';

import '../../core/model/category/category_database_model.dart';
import '../../core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

class EditProductController extends GetxController {
  final ProductDatabaseModel productDatabaseModel;
  EditProductController({required this.productDatabaseModel});

  late Rx<ProductModel> productInfo;
  final AppController appController = Get.find();

  // var selectedUnitOfMeasurement = 'Pcs'.obs;
  var emptyText = ''.obs;
  var isLocalSaveLoading = false.obs;
  var isOnlineSaveLoading = false.obs;

  var categoryListFoundResult = [].obs;
  var unitOfMeasurementListFoundResult = [].obs;
  final formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    var categoryBox = Hive.box<CategoryDatabaseModel>('category');
    var uomBox =
        Hive.box<UnitOfMeasurementDatabaseModel>('unit_of_measurement');
    String? categoryName;
    late String uomName;
    if (productDatabaseModel.categoryId != null) {
      categoryName = categoryBox.values
          .firstWhere((element) =>
              element.categoryId == productDatabaseModel.categoryId)
          .categoryName;
    }
    // if (productDatabaseModel.categoryId != null) {
    uomName = uomBox.values
        .firstWhere((element) =>
            element.uomId == productDatabaseModel.unitOfMeasurementId)
        .name;
    // }
    productInfo = ProductModel(
      name: productDatabaseModel.productName,
      description: productDatabaseModel.description,
      localImagePath: productDatabaseModel.localImagePath,
      categoryId: productDatabaseModel.categoryId,
      categoryName: categoryName,
      productId: productDatabaseModel.productId,
      cost: productDatabaseModel.cost.toString(),
      price: productDatabaseModel.price.toString(),
      modifiedByUserId: appController.userId.value,
      dateCreated: productDatabaseModel.dateCreated,
      dateModified: productDatabaseModel.dateModified,
      quantityOnHand: productDatabaseModel.quantityOnHand.toString(),
      reorderQuantity: productDatabaseModel.reorderQuantity.toString(),
      unitOfMeasurementId: productDatabaseModel.unitOfMeasurementId,
      unitOfMeasurementName: uomName,
      id: productDatabaseModel.id,
    ).obs;
  }

  onEditProductSaveButtonPressed() async {
    isLocalSaveLoading(true);
    // Future.delayed(const Duration(seconds: 3),() => isLocalSaveLoading(false),);
    var productsBox = Hive.box<ProductDatabaseModel>('products');
    // final DateFormat dateFormatter = DateFormat('yyyyMMdd_HmsS');
    // String key = dateFormatter.format(now);
    await productsBox.put(
      productInfo.value.id,
      ProductDatabaseModel(
        productName: productInfo.value.name,
        description: productInfo.value.description,
        categoryId: productInfo.value.categoryId,
        productId: productInfo.value.productId,
        cost: getValidNumValue(productInfo.value.cost),
        price: getValidNumValue(productInfo.value.price),
        createdByUserId: appController.userId.value,
        modifiedByUserId: productInfo.value.modifiedByUserId,
        dateCreated: productInfo.value.dateCreated,
        dateModified: productInfo.value.dateModified,
        quantityOnHand: getValidNumValue(productInfo.value.quantityOnHand),
        reorderQuantity: getValidNumValue(productInfo.value.reorderQuantity),
        unitOfMeasurementId: productInfo.value.unitOfMeasurementId,
        localImagePath: productInfo.value.localImagePath,
        id: productInfo.value.id,
      ),
    );
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
  }
}
