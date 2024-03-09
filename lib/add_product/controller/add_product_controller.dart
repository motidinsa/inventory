import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
// import 'package:my_inventory/core/model/product/product_model/main.dart';

import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/product/product_model.dart';

import '../../core/controller/app_controller.dart';
import '../../core/model/category/category_database_model.dart';
import '../../core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

class AddProductController extends GetxController {
  var selectedUnitOfMeasurement = ''.obs;
  var isLocalSaveLoading = false.obs;
  var isOnlineSaveLoading = false.obs;
  var isSubmitButtonPressed = false.obs;
  final formKey = GlobalKey<FormState>();
  final AppController appController = Get.find();

  @override
  void onInit() {
    var categoryBox = Hive.box<CategoryDatabaseModel>('category');
    var uomBox =
        Hive.box<UnitOfMeasurementDatabaseModel>('unit_of_measurement');
    var defaultUnit =
        uomBox.values.firstWhere((element) => element.name == 'Pcs');
    productInfo.update((val) {
      val?.unitOfMeasurementId = defaultUnit.uomId;
    });
    selectedUnitOfMeasurement(defaultUnit.name);
    categoryListFoundResult(categoryBox.values.toList());
    unitOfMeasurementListFoundResult(uomBox.values.toList());
    super.onInit();
  }

  var categoryListFoundResult = [].obs;
  var unitOfMeasurementListFoundResult = [].obs;
  var productInfo = ProductModel(
          name: '',
          categoryId: '',
          categoryName: '',
          productId: '',
          cost: '',
          price: '',
          dateCreated: DateTime.now(),
          dateModified: DateTime.now(),
          quantityOnHand: '',
          reorderQuantity: '',
          unitOfMeasurementId: '',
          id: '')
      .obs;

  onAddProductSaveButtonPressed() async {
    isLocalSaveLoading(true);
    DateTime now = DateTime.now();
    // Future.delayed(const Duration(seconds: 3),() => isLocalSaveLoading(false),);
    var productsBox = Hive.box<ProductDatabaseModel>('products');
    final DateFormat dateFormatter = DateFormat('yyyyMMdd_HmsS');
    String key = dateFormatter.format(now);
    await productsBox.put(
      key,
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
        id: key,
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
