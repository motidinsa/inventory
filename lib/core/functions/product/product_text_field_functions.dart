import 'package:flutter/cupertino.dart';

import 'package:my_inventory/add_product/functions/add_product_functions.dart';
import 'package:my_inventory/purchase/functions/purchase_functions.dart';
import 'package:my_inventory/sales/functions/sales_functions.dart';
import 'package:my_inventory/core/constants/name_constants.dart';

titleToHint({String? title}) {
  String? value;
  if (title == productN()) {
    value = enterProductNameN();
  } else if (title == descriptionN()) {
    value = writeYourDescriptionN();
  } else if (title == categoryN()) {
    value = selectItemN();
  } else if (title == productIdN()) {
    value = optionalN();
  } else if (title == uomN()) {
    value = selectItemN();
  } else if (title == productListN()) {
    value = searchByProductNameOrIdN();
  } else if (title == salesN()) {
    value = selectItemN();
  } else if (title == purchaseN()) {
    value = selectItemN();
  } else if (title == searchProductsN()) {
    value = searchByProductNameOrIdN();
  } else if (title == selectCategoryN()) {
    value = searchByCategoryNameN();
  } else if (title == selectUomN()) {
    value = searchUomN();
  }
  return value;
}

onTextFieldChange({
  required String currentPage,
  String? title,
  required String data,
  int? index,
}) {
  if (currentPage == salesN()) {
    onSalesTextFieldChange(data: data, index: index, title: title);
  } else if (currentPage == addProductN()) {
    onAddProductTextFieldChange(data: data, index: index, title: title);
  } else if (currentPage == purchaseN()) {
    onPurchaseTextFieldChange(data: data, index: index, title: title);
  }
}

onTextFieldPressed(
    {required String currentPage,
    String? title,
    int? index,
    required BuildContext context}) {
  if (currentPage == addProductN()) {
    onAddProductTextFieldPressed(title: title!, context: context);
  } else if (currentPage == salesN()) {
    onSalesProductSelect(context: context, title: title, index: index);
  } else if (currentPage == purchaseN()) {
    onPurchaseProductSelect(context: context, title: title, index: index);
  }
}
hasOption({String? title}) {
  var itemsWithOption = [categoryN(), uomN(), salesN(), purchaseN()];
  return itemsWithOption.contains(title);
}

minimizePadding({String? title}) {
  var items = [
    productN(),
    descriptionN(),
    searchProductsN(),
    productListN(),
    selectCategoryN(),
    selectUomN(),
    discountN()
  ];
  return !items.contains(title);
}

hasPrefix({required String currentPage, String? title}) {
  var items = [costN(), priceN()];
  if (currentPage == purchaseN() && title == priceN()) {
    return false;
  }
  return items.contains(title);
}

hasSuffix({String? title}) {
  var items = [quantityOnHandN(), reorderQuantityN()];
  return items.contains(title);
}

hasSearchIcon({String? title}) {
  var items = [
    productListN(),
    searchProductsN(),
    selectCategoryN(),
    selectUomN(),
  ];
  return items.contains(title);
}
onFocusChange({
  required String currentPage,
  required String title,
  required bool hasFocus,
  required String data,
}) {
  if (!hasFocus) {
    if (currentPage == addProductN()) {
      onAddProductFocusChange(title: title, data: data);
    } else if (currentPage == salesN()) {
      onSalesProductFocusChange(title: title, data: data);
    } else if (currentPage == purchaseN()) {
      onPurchaseProductFocusChange(title: title, data: data);
    }
  }
}