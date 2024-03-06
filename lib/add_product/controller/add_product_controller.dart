import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gal/gal.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
// import 'package:my_inventory/core/model/product/product_model/main.dart';

import 'package:my_inventory/core/model/product/product_database_model.dart';

import '../../core/constants/name_constants.dart';
import '../../core/model/product/product_model.dart';

class AddProductController extends GetxController {
  var selectedUnitOfMeasurement = 'Pcs'.obs;
  var isLocalSaveLoading = false.obs;
  var isOnlineSaveLoading = false.obs;
  final formKey = GlobalKey<FormState>();
  var categoryList = [
    'cat 1',
    'cat 2',
    'cat 3',
  ].obs;
  var categoryListFoundResult = [
    'cat 1',
    'cat 2',
    'cat 3',
  ].obs;
  var unitOfMeasurementList = ['Pcs', 'Kg', 'Lt'].obs;
  var unitOfMeasurementListFoundResult = ['Pcs', 'Kg', 'Lt'].obs;
  var productInfo = ProductModel(
          name: '',
          categoryId: '',
          categoryName: '',
          productId: '',
          cost: '',
          price: '',
          createdByUserId: '',
          dateCreated: DateTime.now(),
          dateModified: DateTime.now(),
          quantityOnHand: '',
          reorderQuantity: '',
          unitOfMeasurement: 'Pcs',
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
        createdByUserId: productInfo.value.createdByUserId,
        dateCreated: productInfo.value.dateCreated,
        dateModified: productInfo.value.dateModified,
        quantityOnHand: getValidNumValue(productInfo.value.quantityOnHand),
        reorderQuantity: getValidNumValue(productInfo.value.reorderQuantity),
        unitOfMeasurement: productInfo.value.unitOfMeasurement,
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
