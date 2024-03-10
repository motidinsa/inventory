import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../core/constants/name_constants.dart';
import '../../core/controller/add_item_controller.dart';
import '../../core/functions/core_functions.dart';
import '../../core/model/category/category_database_model.dart';
import '../../core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import '../../core/ui/alert_dialog/alert_dialog_option_select.dart';
import '../controller/edit_controller.dart';

onEditProductFocusChange({
  required String title,
  required String data,
}) {
  final EditProductController editProductController = Get.find();
  editProductController.productInfo.update((product) {
    if (title == productN()) {
      product?.name = data;
    } else if (title == descriptionN()) {
      product?.description = data;
    } else if (title == productIdN()) {
      product?.productId = data;
    } else if (title == costN()) {
      product?.cost = data;
    } else if (title == priceN()) {
      product?.price = data;
    } else if (title == quantityOnHandN()) {
      product?.quantityOnHand = data;
    } else if (title == reorderQuantityN()) {
      product?.reorderQuantity = data;
    } else if ([categoryNameN, uomNameN].contains(title)) {
      AddItemController addItemController = Get.find();
      addItemController.addedText(data);
    }
  });
}

onEditProductTextFieldPressed(
    {required String title, required BuildContext context}) {
  final EditProductController editProductController = Get.find();
  Map<String, List> itemsWithList = {
    categoryN(): editProductController.categoryListFoundResult,
    uomN(): editProductController.unitOfMeasurementListFoundResult,
  };

  if (itemsWithList.keys.contains(title)) {
    var categoryBox = Hive.box<CategoryDatabaseModel>('category');
    var uomBox =
        Hive.box<UnitOfMeasurementDatabaseModel>('unit_of_measurement');
    editProductController.categoryListFoundResult(categoryBox.values.toList());
    editProductController
        .unitOfMeasurementListFoundResult(uomBox.values.toList());
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialogOptionSelect(
          currentPage: editProductN,
          title: title == categoryN() ? selectCategoryN() : selectUomN(),
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

getEditProductAlertDialogLength({required String title}) {
  EditProductController editProductController = Get.find();
  if (title == selectCategoryN()) {
    return editProductController.categoryListFoundResult.length;
  } else if (title == selectUomN()) {
    return editProductController.unitOfMeasurementListFoundResult.length;
  }
}

onEditProductTextFieldChange({
  String? title,
  required String data,
  int? index,
}) {
  EditProductController editProductController = Get.find();
  if (title == selectCategoryN()) {
    var categoryBox = Hive.box<CategoryDatabaseModel>('category');
    editProductController.categoryListFoundResult(categoryBox.values
        .where((category) =>
            category.categoryName.toLowerCase().contains(data.toLowerCase()))
        .toList());
  } else if (title == selectUomN()) {
    var uomBox =
        Hive.box<UnitOfMeasurementDatabaseModel>('unit_of_measurement');
    editProductController.unitOfMeasurementListFoundResult(uomBox.values
        .where((uom) => uom.name.toLowerCase().contains(data.toLowerCase()))
        .toList());
  }
}

onEditProductAlertDialogOptionSelect(
    {required String title, required String data, required String id}) {
  final EditProductController editProductController = Get.find();
  editProductController.productInfo.update((product) {
    if (title == selectCategoryN()) {
      product?.categoryName = data;
      product?.categoryId = id;
    } else if (title == selectUomN()) {
      product?.unitOfMeasurementId = id;
      product?.unitOfMeasurementName = data;
    }
  });
}
