import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_product/functions/add_product_functions.dart';

import 'package:my_inventory/edit_product/functions/edit_product_functions.dart';
import 'package:my_inventory/product_list/functions/product_list_functions.dart';
import 'package:my_inventory/purchase/functions/purchase_functions.dart';
import 'package:my_inventory/sales/functions/sales_functions.dart';
import 'package:my_inventory/core/constants/name_constants.dart';

import '../../controller/app_controller.dart';

titleToHint({String? title}) {
  String? value;
  if (title == productN) {
    value = enterProductNameN();
  } else if (title == descriptionN) {
    value = writeYourdescriptionN;
  } else if (title == categoryN) {
    value = optionalN();
  } else if (title == productIdN) {
    value = optionalN();
  } else if (title == uomSN) {
    value = selectItemN();
  } else if (title == productListN()) {
    value = searchByProductNameOrIdN();
  } else if (title == salesN()) {
    value = selectItemN();
  } else if (title == purchaseN()) {
    value = selectItemN();
  } else if (title == searchProductsN()) {
    value = searchByProductNameOrIdN();
  } else if (title == selectCategoryN) {
    value = searchByCategoryNameN();
  } else if (title == selectUomSN) {
    value = searchUomSN;
  } else if (title == defaultN) {
    value = defaultN;
  }
  return value;
}

onTextFieldChange({
  String? title,
  required String data,
  int? index,
}) {
  final AppController appController = Get.find();
  String currentPage = appController.currentPages.last;
  if (currentPage == salesN()) {
    onSalesTextFieldChange(data: data, index: index, title: title);
  } else if (currentPage == addProductN) {
    onAddProductTextFieldChange(data: data, index: index, title: title);
  } else if (currentPage == editProductN) {
    onEditProductTextFieldChange(data: data, index: index, title: title);
  } else if (currentPage == purchaseN()) {
    onPurchaseTextFieldChange(data: data, index: index, title: title);
  } else if (currentPage == productListN()) {
    onProductListTextFieldChange(data: data);
  }
}

onTextFieldPressed(
    {
    String? title,
    int? index,
    required BuildContext context}) {
  final AppController appController = Get.find();
  String currentPage = appController.currentPages.last;
  if (currentPage == addProductN) {
    onAddProductTextFieldPressed(title: title!);
  } else if (currentPage == editProductN) {
    onEditProductTextFieldPressed(title: title!, context: context);
  } else if (currentPage == salesN()) {
    onSalesProductSelect( title: title, index: index);
  } else if (currentPage == purchaseN()) {
    onPurchaseProductSelect(title: title, index: index);
  }
}

hasOption({String? title}) {
  var itemsWithOption = [categoryN, uomSN, salesN(), purchaseN(), defaultN];
  return itemsWithOption.contains(title);
}

minimizePadding({String? title}) {
  var items = [
    productN,
    descriptionN,
    searchProductsN(),
    productListN(),
    selectCategoryN,
    selectUomSN,
    discountN(),
    categoryNameN,
    uomNameN
  ];
  return !items.contains(title);
}

hasSuffix({String? title}) {
  var items = [quantityOnHandN, reorderQuantityN];
  return items.contains(title);
}

hasSearchIcon({String? title}) {
  var items = [
    productListN(),
    searchProductsN(),
    selectCategoryN,
    selectUomSN,
  ];
  return items.contains(title);
}

onFocusChange({
  required String title,
  required bool hasFocus,
  required String data,
}) {
  if (!hasFocus) {
    final AppController appController = Get.find();
    String currentPage = appController.currentPages.last;
    if (currentPage == addProductN) {
      onAddProductFocusChange(title: title, data: data);
    } else if (currentPage == salesN()) {
      onSalesProductFocusChange(title: title, data: data);
    } else if (currentPage == purchaseN()) {
      onPurchaseProductFocusChange(title: title, data: data);
    } else if (currentPage == editProductN) {
      onEditProductFocusChange(title: title, data: data);
    }
  }
}
