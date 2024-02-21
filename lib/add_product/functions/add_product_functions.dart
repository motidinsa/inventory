import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';

import '../../core/functions/core_functions.dart';
import '../../core/ui/alert_dialog/alert_dialog_option_select.dart';
import '../controller/add_product_controller.dart';



titleToHint({String? title}) {
  var titleToHint = {
    productN(): enterProductNameN(),
    descriptionN(): writeYourDescriptionN(),
    categoryN(): selectItemN(),
    productIdN(): optionalN(),
    uomN(): selectItemN(),
  };
  return titleToHint[title];
}

hasOption({String? title}) {
  var itemsWithOption = [categoryN(), uomN()];
  return itemsWithOption.contains(title);
}

minimizePadding({String? title}) {
  var items = [productN(), descriptionN()];
  return !items.contains(title);
}

hasPrefix({String? title}) {
  var items = [costN(), priceN()];
  return items.contains(title);
}

hasSuffix({String? title}) {
  var items = [quantityOnHandN(), reorderQuantityN()];
  return items.contains(title);
}

onAddProductFocusChange({
  required String title,
  required bool hasFocus,
  required String data,
}) {
  if (!hasFocus) {
    final AddProductController addProductController = Get.find();
    addProductController.productInfo.update((product) {
      if (title == productN()) {
        product?.name = data;
      } else if (title == descriptionN()) {
        product?.description = data;
      }
    });
  }
}

onAddProductTextFieldPressed(
    {required String title, required BuildContext context}) {
  final AddProductController addProductController = Get.find();
  Map<String, List<String>> itemsWithList = {
    categoryN(): addProductController.categoryList,
    uomN(): addProductController.unitOfMeasurementList,
  };
  if (itemsWithList.keys.contains(title)) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialogOptionSelect(
          title: title,
          itemList: itemsWithList[title]!,
        );
      },
    ).then(
      (value) async {
        await unFocus();
        // if (title == transactionName()) {
        //   Get.delete<OtherTransactionAddController>();
        // }
      },
    );
  }
}

onAddProductAlertDialogOptionSelect(
    {required String title, required String data}) {
  final AddProductController addProductController = Get.find();
  addProductController.productInfo.update((product) {
    if (title == categoryN()) {
      product?.categoryName = data;
    } else if (title == uomN()) {
      product?.unitOfMeasurement = data;
    }
  });
  Get.back();
}
titleToData({required String title}){
  final AddProductController addProductController = Get.find();
  var items = {
    categoryN(): addProductController.productInfo.value.categoryName,
    uomN(): addProductController.productInfo.value.unitOfMeasurement,
  };
  return items[title];
}