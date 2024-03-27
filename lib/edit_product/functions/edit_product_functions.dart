import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/add_item_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_select.dart';
import 'package:my_inventory/edit_product/controller/edit_product_controller.dart';
import 'package:my_inventory/main.dart';

import 'package:my_inventory/core/model/product/product_database_model.dart';

onEditProductFocusChange({
  required String title,
  required String data,
}) {
  final EditProductController editProductController = Get.find();
  editProductController.productInfo.update((product) {
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

onEditProductTextFieldPressed({required String title}) {
  final EditProductController editProductController = Get.find();
  Map<String, List> itemsWithList = {
    categoryN: editProductController.categoryListFoundResult,
    uomSN: editProductController.unitOfMeasurementListFoundResult,
  };
  if (itemsWithList.keys.contains(title)) {
    var categoryList = isar.categoryDatabaseModels.where().findAllSync();
    var uomList = isar.unitOfMeasurementDatabaseModels.where().findAllSync();
    editProductController.categoryListFoundResult(categoryList);
    editProductController.unitOfMeasurementListFoundResult(uomList);
    Get.dialog(AlertDialogOptionSelect(
      title: title == categoryN ? selectCategoryN : selectUomSN,
    )).then(
      (value) async {
        await unFocus();
      },
    );
  }
}

getEditProductAlertDialogLength({required String title}) {
  EditProductController editProductController = Get.find();
  if (title == selectCategoryN) {
    return editProductController.categoryListFoundResult.length;
  } else if (title == selectUomSN) {
    return editProductController.unitOfMeasurementListFoundResult.length;
  }
}

onEditProductTextFieldChange({
  String? title,
  required String data,
  int? index,
}) {
  EditProductController editProductController = Get.find();
  if (title == selectCategoryN) {
    editProductController.categoryListFoundResult(isar.categoryDatabaseModels
        .filter()
        .categoryNameContains(data, caseSensitive: false)
        .findAllSync());
  } else if (title == selectUomSN) {
    editProductController.unitOfMeasurementListFoundResult(isar
        .unitOfMeasurementDatabaseModels
        .filter()
        .nameContains(data, caseSensitive: false)
        .findAllSync());
  }
}

onEditProductAlertDialogOptionSelect(
    {required String title, required String data, required int isarId}) {
  final EditProductController editProductController = Get.find();
  editProductController.productInfo.update((product) {
    ProductDatabaseModel productDatabaseModel = isar.productDatabaseModels
        .getSync(isarId)!;
    if (title == selectCategoryN) {
      product?.categoryName = data;
      product?.categoryId = productDatabaseModel.categoryId;
    } else if (title == selectUomSN) {
      product?.unitOfMeasurementId = productDatabaseModel.unitOfMeasurementId;
      product?.unitOfMeasurementName = data;
    }
  });
  editProductController.update();
}
String? getEditProductData({required String title}) {
  EditProductController editProductController = Get.find();
  if (title == productN) {
    return editProductController.productInfo.value.name;
  } else if (title == descriptionN) {
    return editProductController.productInfo.value.description;
  } else if (title == productIdN) {
    return editProductController.productInfo.value.userAssignedProductId;
  } else if (title == costN) {
    return  emptyIfDefaultValue(getFormattedNumberWithoutComa(
        editProductController.productInfo.value.cost));
  } else if (title == priceN()) {
  return emptyIfDefaultValue(getFormattedNumberWithoutComa(
        editProductController.productInfo.value.price));
  } else if (title == quantityOnHandN) {
    return emptyIfDefaultValue(getFormattedNumberWithoutComa(
        editProductController.productInfo.value.quantityOnHand));
  } else if (title == reorderQuantityN) {
    return emptyIfDefaultValue(getFormattedNumberWithoutComa(
        editProductController.productInfo.value.reorderQuantity));
  } else if (title == uomSN) {
    return editProductController.productInfo.value.unitOfMeasurementName;
  } else if (title == categoryN) {
    return editProductController.productInfo.value.categoryName;
  } else if (title == selectCategoryN) {
    return editProductController.emptyText.value;
  } else if (title == selectUomSN) {
    return editProductController.emptyText.value;
  } else if (title == categoryNameN) {
    return editProductController.emptyText.value;
  } else if (title == uomNameN) {
    return editProductController.emptyText.value;
  }
  return null;
}