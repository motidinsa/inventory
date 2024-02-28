import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

unFocus() => FocusManager.instance.primaryFocus?.unfocus();

onSaveButtonPressed({required String redirectFrom}) async {
  await unFocus();
  if (redirectFrom == addProductN()) {
    AddProductController addProductController = Get.find();
    addProductController.onAddProductSaveButtonPressed();
  } else if (redirectFrom == salesN()) {
    SalesController salesController = Get.find();
    salesController.saveSalesProductToDB();
  }
  Get.back();
}

titleToData({required String title, required String currentPage, int? index}) {
  String? value;
  if (currentPage == salesN()) {
    SalesController salesController = Get.find();
    if (title == salesN()) {
      value = salesController.salesModels[index!].value.productName;
    }
    if (title == discountN()) {
      value = salesController.discount.value;
    }
    return value;
  } else if (currentPage == addProductN()) {
    AddProductController addProductController = Get.find();
    var items = {
      categoryN(): addProductController.productInfo.value.categoryName,
      uomN(): addProductController.productInfo.value.unitOfMeasurement,
    };
    return items[title];
  }
}
