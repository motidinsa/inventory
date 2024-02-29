import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

unFocus() => FocusManager.instance.primaryFocus?.unfocus();
bool isNumeric(String input) {
  final numberRegExp = RegExp(r'^[-+]?[0-9]+(\.[0-9]+)?$');
  return numberRegExp.hasMatch(input);
}
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
    } else if (title == quantityN()) {
      value = emptyIfDefaultValue(
          salesController.salesModels[index!].value.quantity);
    } else if (title == discountN()) {
      value = salesController.discount.value;
    } else if (title == searchProductsN()) {
      value = salesController.emptyString.value;
    }
  } else if (currentPage == addProductN()) {
    AddProductController addProductController = Get.find();
    var items = {
      categoryN(): addProductController.productInfo.value.categoryName,
      uomN(): addProductController.productInfo.value.unitOfMeasurement,
    };
    return items[title];
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    if (title == purchaseN()) {
      value = purchaseController.purchaseModels[index!].value.productName;
    } else if (title == quantityN()) {
      value = emptyIfDefaultValue(
          purchaseController.purchaseModels[index!].value.quantity);
    } else if (title == priceN()) {
      value = purchaseController.purchaseModels[index!].value.price.toString();
    } else if (title == discountN()) {
      value = purchaseController.discount.value;
    } else if (title == searchProductsN()) {
      value = purchaseController.emptyString.value;
    }
  }
  return value;
}

emptyIfNull(String? data) {
  if (data != null) {
    return data;
  }
  return '';
}

emptyIfDefaultValue(var data) {
  var emptyLists = [0, '0.0'];
  if (!emptyLists.contains(data)) {
    return data.toString();
  }
  return '';
}

nullIfEmpty(String? data) {
  if (data != null) {
    if (data.isEmpty) {
      return null;
    }
  }
  return data;
}
