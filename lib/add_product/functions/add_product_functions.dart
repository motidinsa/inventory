import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_select.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

import 'package:my_inventory/core/controller/add_item_controller.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

onAddProductTextFieldChange({
  String? title,
  required String data,
  int? index,
}) {
  AddProductController addProductController = Get.find();
  if (title == selectCategoryN) {
    var categoryBox = Hive.box<CategoryDatabaseModel>('category');
    addProductController.categoryListFoundResult(categoryBox.values
        .where((category) =>
            category.categoryName.toLowerCase().contains(data.toLowerCase()))
        .toList());
  } else if (title == selectUomSN) {
    var uomBox =
        Hive.box<UnitOfMeasurementDatabaseModel>('unit_of_measurement');
    addProductController.unitOfMeasurementListFoundResult(uomBox.values
        .where((uom) => uom.name.toLowerCase().contains(data.toLowerCase()))
        .toList());
  }
}

onAddProductFocusChange({
  required String title,
  required String data,
}) {
  final AddProductController addProductController = Get.find();
  addProductController.productInfo.update((product) {
    if (title == productN) {
      product?.name = data;
    } else if (title == descriptionN) {
      product?.description = data;
    } else if (title == productIdN) {
      product?.userAssignedProductId = data;
    } else if (title == costN) {
      product?.cost = data;
    } else if (title == priceN()) {
      product?.price = data;
    } else if (title == quantityOnHandN) {
      product?.quantityOnHand = data;
    } else if (title == reorderQuantityN) {
      product?.reorderQuantity = data;
    } else if ([categoryNameN, uomNameN].contains(title)) {
      AddItemController addItemController = Get.find();
      addItemController.addedText(data);
    }
  });
}

getAddProductAlertDialogLength({required String title}) {
  AddProductController addProductController = Get.find();
  if (title == selectCategoryN) {
    return addProductController.categoryListFoundResult.length;
  } else if (title == selectUomSN) {
    return addProductController.unitOfMeasurementListFoundResult.length;
  }
}

onSalesProductSelect({
  String? title,
  int? index,
}) {
  if (title == salesN()) {
    SalesController salesController = Get.find();
    salesController.searchProductFoundResult(salesController.products);
    Get.dialog(AlertDialogOptionSelect(
      title: searchProductsN(),
      listIndex: index,
    )).then(
      (value) async {
        await unFocus();
      },
    );
  }
}

onPurchaseProductSelect({
  String? title,
  int? index,
}) {
  if (title == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    purchaseController.searchProductFoundResult =
        purchaseController.products.obs;
    Get.dialog(AlertDialogOptionSelect(
      title: searchProductsN(),
      listIndex: index,
    )).then(
      (value) async {
        await unFocus();
      },
    );
  }
}

onAddProductTextFieldPressed(
    {required String title, required BuildContext context}) {
  final AddProductController addProductController = Get.find();
  Map<String, List> itemsWithList = {
    categoryN: addProductController.categoryListFoundResult,
    uomSN: addProductController.unitOfMeasurementListFoundResult,
  };

  if (itemsWithList.keys.contains(title)) {
    var categoryBox = Hive.box<CategoryDatabaseModel>('category');
    var uomBox =
        Hive.box<UnitOfMeasurementDatabaseModel>('unit_of_measurement');
    addProductController.categoryListFoundResult(categoryBox.values.toList());
    addProductController
        .unitOfMeasurementListFoundResult(uomBox.values.toList());
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialogOptionSelect(
          title: title == categoryN ? selectCategoryN : selectUomSN,
          itemList: itemsWithList[title]!,
        );
      },
    ).then(
      (value) async {
        await unFocus();
      },
    );
  }
}

onAddProductAlertDialogOptionSelect(
    {required String title, required String data, required String id}) {
  final AddProductController addProductController = Get.find();
  addProductController.productInfo.update((product) {
    if (title == selectCategoryN) {
      product?.categoryName = data;
      product?.categoryId = id;
    } else if (title == selectUomSN) {
      product?.unitOfMeasurementName = data;
      product?.unitOfMeasurementId = id;
    }
  });
}
