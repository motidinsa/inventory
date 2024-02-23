import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';

import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';

unFocus() => FocusManager.instance.primaryFocus?.unfocus();

onSaveButtonPressed({required String redirectFrom}) {
  if (redirectFrom == addProductN()) {
    AddProductController addProductController = Get.find();
    addProductController.onAddProductSaveButtonPressed();
  }
}

titleToData({required String title}){

  if(title == productListN()){
    ProductListController productListController = Get.find();
    // return
  }else{
    AddProductController addProductController = Get.find();
    var items = {
      categoryN(): addProductController.productInfo.value.categoryName,
      uomN(): addProductController.productInfo.value.unitOfMeasurement,
    };
    return items[title];
  }
}
