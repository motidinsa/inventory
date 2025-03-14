import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:inventory/add_product/controller/add_product_controller.dart';
import 'package:inventory/add_product/repository/add_product_repository.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/controller/add_item_controller.dart';
import 'package:inventory/core/model/category/category_database_model.dart';
import 'package:inventory/core/model/customer/customer_database_model.dart';
import 'package:inventory/core/model/product/product_database_model.dart';
import 'package:inventory/core/model/product/product_model.dart';
import 'package:inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:inventory/core/model/vendor/vendor_database_model.dart';
import 'package:inventory/core/ui/alert_dialog/alert_dialog_option_select.dart';
import 'package:inventory/add_sales/controller/add_sales_controller.dart';

import 'package:inventory/core/routes/route_names.dart';

import 'package:inventory/core/functions/helper_functions.dart';

import '../../core/controller/app_controller.dart';
import '../../product_list/controller/product_list_controller.dart';
import '../../product_list/repository/product_list_repository.dart';

onAddProductSaveButtonPressed() async {
  AddProductController addProductController = AddProductController.to;
  addProductController.isSubmitButtonPressed = true;
  addProductController.update();
  if (AppController.to.formKey.currentState!.validate()) {
    unFocus();
    addProductController.isLoading = true;
    // addProductController.update();
    try {
      await AddProductRepository.addProduct();
      if (addProductController.redirectedFrom == RouteName.productList) {
        ProductListController productListController =
            ProductListController.to;
        productListController.productList =
            ProductListRepository.getAllProducts();
        productListController.isEmpty = false;
        productListController.update();
      }
      showSnackbar(message: successfullyAddedProductN, success: true);
      Get.back();
    } on Exception{
      showSnackbar(message: someErrorOccurredN, success: false);
    } finally {
      addProductController.isLoading = false;
      addProductController.update();
    }
  } else {
    showSnackbar(message: pleaseFillTheRequiredFieldN);
  }
}

onAddProductTextFieldChange({
  required String title,
  required String data,
}) {
  ProductModel productModel = AddProductController.to.productModel;
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
    AddProductController.to.categoryListFoundResult =
        AddProductRepository.searchCategory(data: data);
    AddProductController.to.update();
  } else if (title == selectUomSN) {
    AddProductController.to.unitOfMeasurementListFoundResult =
        AddProductRepository.searchUnitOfMeasurement(data: data);
    AddProductController.to.update();
  } else if ([categoryNameN, uomNameN].contains(title)) {
    AddItemController.to.addedText = data;
  }
}

onAddProductTextFieldPressed({required String title}) {
  if ([categoryN, uomSN].contains(title)) {
    if (title == categoryN) {
      AddProductController.to.categoryListFoundResult =
          AddProductRepository.getAllCategory();
    } else if (title == uomSN) {
      AddProductController.to.unitOfMeasurementListFoundResult =
          AddProductRepository.getAllUnitOfMeasurement();
    }
    Get.dialog(GetBuilder<AddProductController>(builder: (context) {
      return AlertDialogOptionSelect(
        title: title == categoryN ? selectCategoryN : selectUomSN,
      );
    })).then((value) => unFocus());
  }
}

onAddProductAlertDialogOptionSelect(
    {required String title, required int index}) {
  final AddProductController addProductController = AddProductController.to;
  if (title == selectCategoryN) {
    CategoryDatabaseModel categoryDatabaseModel =
        addProductController.categoryListFoundResult[index];
    addProductController.productModel.categoryName =
        categoryDatabaseModel.categoryName;
    addProductController.productModel.categoryId =
        categoryDatabaseModel.categoryId;
  } else if (title == selectUomSN) {
    UnitOfMeasurementDatabaseModel unitOfMeasurementDatabaseModel =
        addProductController.unitOfMeasurementListFoundResult[index];
    addProductController.productModel.unitOfMeasurementName =
        unitOfMeasurementDatabaseModel.name;
    addProductController.productModel.unitOfMeasurementId =
        unitOfMeasurementDatabaseModel.uomId;
  }
  Get.back();
  addProductController.update();
}

String getEmptySearchResult({required String title}) {
  if (title == selectCategoryN) {
    return noCategoryFoundN;
  } else if (title == selectUomSN) {
    return noUnitOfMeasurementFoundN;
  } else if (title == searchVendorsN) {
    return noVendorFoundN;
  } else if (title == searchCustomersN) {
    return noCustomerFoundN;
  } else if (title == searchProductsN) {
    return noProductFoundN;
  }
  return '';
}
