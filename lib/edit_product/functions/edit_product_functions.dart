import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/add_item_controller.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_select.dart';
import 'package:my_inventory/edit_product/controller/edit_product_controller.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

import '../../add_product/repository/add_product_repository.dart';
import '../../core/controller/app_controller.dart';
import '../../core/model/product/product_model.dart';
import '../repository/edit_product_repository.dart';

onEditProductSaveButtonPressed() async {
  EditProductController editProductController = EditProductController.to;
  editProductController.isSubmitButtonPressed = true;
  editProductController.update();
  if (AppController.to.formKey.currentState!.validate()) {
    editProductController.isLoading = true;
    editProductController.update();
    try {
      await EditProductRepository.editProduct();
      showSnackbar(message: successfullyEditedProductN, success: true);
      Get.back();
    } on Exception{
      showSnackbar(message: someErrorOccurredN, success: false);
    } finally {
      editProductController.isLoading = false;
      editProductController.update();
    }
  } else {
    showSnackbar(message: pleaseFillTheRequiredFieldN);
  }
}

onEditProductTextFieldChange({
  required String title,
  required String data,
}) {
  ProductModel productModel = EditProductController.to.productModel;
  if (title == productN) {
    productModel.name = data;
  } else if (title == descriptionN) {
    productModel.description = data;
  } else if (title == productIdN) {
    productModel.userAssignedProductId = data;
  } else if (title == costN) {
    productModel.cost = data;
  } else if (title == priceN) {
    productModel.price = data;
  } else if (title == quantityOnHandN) {
    productModel.quantityOnHand = data;
  } else if (title == reorderQuantityN) {
    productModel.reorderQuantity = data;
  } else if (title == selectCategoryN) {
    EditProductController.to.categoryListFoundResult =
        AddProductRepository.searchCategory(data: data);
    EditProductController.to.update();
  } else if (title == selectUomSN) {
    EditProductController.to.unitOfMeasurementListFoundResult =
        AddProductRepository.searchUnitOfMeasurement(data: data);
    EditProductController.to.update();
  } else if ([categoryNameN, uomNameN].contains(title)) {
    AddItemController.to.addedText = data;
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
  EditProductController editProductController = Get.find();  final Isar isar = Get.find();
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
  final EditProductController editProductController = Get.find();  final Isar isar = Get.find();
  editProductController.productModel.update((product) {
    if (title == selectCategoryN) {
      CategoryDatabaseModel categoryDatabaseModel =
          isar.categoryDatabaseModels.getSync(isarId)!;
      product?.categoryName = data;
      product?.categoryId = categoryDatabaseModel.categoryId;
    } else if (title == selectUomSN) {
      UnitOfMeasurementDatabaseModel uomDatabaseModel =
          isar.unitOfMeasurementDatabaseModels.getSync(isarId)!;
      product?.unitOfMeasurementId = uomDatabaseModel.uomId;
      product?.unitOfMeasurementName = data;
    }
  });
  Get.back();
  editProductController.update();
}

String? getEditProductData({required String title}) {
  EditProductController editProductController = Get.find();
  if (title == productN) {
    return editProductController.productModel.value.name;
  } else if (title == descriptionN) {
    return editProductController.productModel.value.description;
  } else if (title == productIdN) {
    return editProductController.productModel.value.userAssignedProductId;
  } else if (title == costN) {
    return emptyIfDefaultValue(getFormattedNumberWithoutComa(
        editProductController.productModel.value.cost));
  } else if (title == priceN) {
    return emptyIfDefaultValue(getFormattedNumberWithoutComa(
        editProductController.productModel.value.price));
  } else if (title == quantityOnHandN) {
    return emptyIfDefaultValue(getFormattedNumberWithoutComa(
        editProductController.productModel.value.quantityOnHand));
  } else if (title == reorderQuantityN) {
    return emptyIfDefaultValue(getFormattedNumberWithoutComa(
        editProductController.productModel.value.reorderQuantity));
  } else if (title == uomSN) {
    return editProductController.productModel.value.unitOfMeasurementName;
  } else if (title == categoryN) {
    return editProductController.productModel.value.categoryName;
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
