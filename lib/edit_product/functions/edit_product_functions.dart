import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/controller/add_item_controller.dart';
import 'package:inventory/core/model/category/category_database_model.dart';
import 'package:inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:inventory/core/ui/alert_dialog/alert_dialog_option_select.dart';
import 'package:inventory/edit_product/controller/edit_product_controller.dart';

import 'package:inventory/core/functions/helper_functions.dart';

import '../../add_product/repository/add_product_repository.dart';
import '../../core/controller/app_controller.dart';
import '../../core/model/product/product_model.dart';
import '../../product_detail/controller/product_detail_controller.dart';
import '../../product_list/controller/product_list_controller.dart';
import '../../product_list/repository/product_list_repository.dart';
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
      ProductListController productListController =
          ProductListController.to;
      productListController.productList =
          ProductListRepository.searchProduct(
              data: productListController.searchedText);
      productListController.update();
      ProductDetailController.to.update();
      showSnackbar(message: successfullyEditedProductN, success: true);
      Get.back();
    } on Exception {
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
onEditProductTextFieldPressed({required String title}) {
  if ([categoryN, uomSN].contains(title)) {
    if (title == categoryN) {
      EditProductController.to.categoryListFoundResult =
          AddProductRepository.getAllCategory();
    } else if (title == uomSN) {
      EditProductController.to.unitOfMeasurementListFoundResult =
          AddProductRepository.getAllUnitOfMeasurement();
    }
    Get.dialog(GetBuilder<EditProductController>(builder: (context) {
      return AlertDialogOptionSelect(
        title: title == categoryN ? selectCategoryN : selectUomSN,
      );
    })).then((value) => unFocus());
  }
}
onEditProductAlertDialogOptionSelect(
    {required String title, required int index}) {
  final EditProductController editProductController = EditProductController.to;

  if (title == selectCategoryN) {
    CategoryDatabaseModel categoryDatabaseModel =
        editProductController.categoryListFoundResult[index];
    editProductController.productModel.categoryName =
        categoryDatabaseModel.categoryName;
    editProductController.productModel.categoryId =
        categoryDatabaseModel.categoryId;
  } else if (title == selectUomSN) {
    UnitOfMeasurementDatabaseModel unitOfMeasurementDatabaseModel =
        editProductController.unitOfMeasurementListFoundResult[index];
    editProductController.productModel.unitOfMeasurementName =
        unitOfMeasurementDatabaseModel.name;
    editProductController.productModel.unitOfMeasurementId =
        unitOfMeasurementDatabaseModel.uomId;
  }
  Get.back();
  editProductController.update();
}

String? getEditProductData({required String title}) {
  EditProductController editProductController = Get.find();
  if (title == productN) {
    return editProductController.productModel.name;
  } else if (title == descriptionN) {
    return editProductController.productModel.description;
  } else if (title == productIdN) {
    return editProductController.productModel.userAssignedProductId;
  } else if (title == costN) {
    return emptyIfDefaultValue(getFormattedNumberWithoutComa(
        editProductController.productModel.cost));
  } else if (title == priceN) {
    return emptyIfDefaultValue(getFormattedNumberWithoutComa(
        editProductController.productModel.price));
  } else if (title == quantityOnHandN) {
    return emptyIfDefaultValue(getFormattedNumberWithoutComa(
        editProductController.productModel.quantityOnHand));
  } else if (title == reorderQuantityN) {
    return emptyIfDefaultValue(getFormattedNumberWithoutComa(
        editProductController.productModel.reorderQuantity));
  } else if (title == uomSN) {
    return editProductController.productModel.unitOfMeasurementName;
  } else if (title == categoryN) {
    return editProductController.productModel.categoryName;
  }
  return null;
}
