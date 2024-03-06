import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

unFocus() => FocusManager.instance.primaryFocus?.unfocus();

bool isNumeric(String input) {
  final numberRegExp = RegExp(r'^[-+]?[0-9]+(\.[0-9]+)?$');
  return numberRegExp.hasMatch(input);
}

onSaveButtonPressed({required String redirectFrom}) async {
  AppController appController = Get.find();
  await unFocus();
  if (appController.formKey.currentState!.validate()) {
    if (redirectFrom == addProductN()) {
      AddProductController addProductController = Get.find();
      addProductController.onAddProductSaveButtonPressed();
    } else if (redirectFrom == salesN()) {
      SalesController salesController = Get.find();
      salesController.saveSalesProductToDB();
    } else if (redirectFrom == purchaseN()) {
      PurchaseController purchaseController = Get.find();
      purchaseController.savePurchaseProductToDB();
    }
    Get.back();
  }
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
    } else if (title == defaultN) {
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
      value = purchaseController.purchaseModels[index!].value.quantity;
    } else if (title == priceN()) {
      value = purchaseController.purchaseModels[index!].value.price;
    } else if (title == discountN()) {
      value = purchaseController.discount.value;
    } else if (title == searchProductsN()) {
      value = purchaseController.emptyString.value;
    } else if (title == defaultN) {
      value = purchaseController.emptyString.value;
    }
  } else if (currentPage == productListN()) {
    ProductListController productListController = Get.find();
    value = productListController.emptyValue.value;
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

onAddIconPressed({required String currentPage}) {
  if (currentPage == salesN()) {
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    purchaseController.addPurchaseProduct();
  } else if (currentPage == addProductN()) {}
}

titleToIcon({required String title}) {
  IconData? iconData;
  if (title == dateN) {
    iconData = Icons.calendar_month_rounded;
  } else if (title == refN) {
    // iconData = Icons.contra;
  } else if (title == telN) {
    iconData = Icons.phone;
  } else if (title == emailN()) {
    iconData = Icons.email_outlined;
  }
  return Icon(iconData, color: Colors.grey.shade600);
}

getKeyboardType({required String title}) {
  List<String> numberKeyboardLists = [
    costN(),
    priceN(),
    quantityOnHandN(),
    reorderQuantityN(),
    quantityN()
  ];
  if (numberKeyboardLists.contains(title)) {
    return TextInputType.number;
  } else if (title == phoneNumberN()) {
    return TextInputType.phone;
  } else if (title == emailN()) {
    return TextInputType.emailAddress;
  }
  return TextInputType.name;
}

mapValidation({
  required String title,
  required String data,
}) {
  List<String> nonEmptyTitles = [
    productN(),
    categoryN(),
  ];
  List<String> numberKeyboardLists = [
    costN(),
    priceN(),
    quantityOnHandN(),
    reorderQuantityN(),
    quantityN()
  ];
  if (nonEmptyTitles.contains(title)) {
    if (data.isEmpty) {
      return 'This is required field';
    }
  } else if (numberKeyboardLists.contains(title)) {
    if (data.isNotEmpty && !isNumeric(data)) {
      return 'Invalid number';
    }
  }
  return null;
}
