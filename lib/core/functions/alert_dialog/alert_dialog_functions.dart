import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/add_product/functions/add_product_functions.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/edit_product/controller/edit_product_controller.dart';
import 'package:my_inventory/edit_product/functions/edit_product_functions.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/purchase/functions/purchase_functions.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:my_inventory/sales/functions/sales_functions.dart';

onAlertDialogOptionSelect(
    {required String title,
    required int isarId,
    required String data,
    int? listIndex}) {
  final AppController appController = Get.find();
  String currentPage = appController.currentPages.last;
  if (currentPage == salesN()) {
    onSalesSearchProductAlertDialogOptionSelect(
        listIndex: listIndex, isarId: isarId, title: title);
  } else if (currentPage == addProductN) {
    onAddProductAlertDialogOptionSelect(
        title: title, data: data, isarId: isarId);
  } else if (currentPage == editProductN) {
    onEditProductAlertDialogOptionSelect(
        title: title, data: data, isarId: isarId);
  } else if (currentPage == purchaseN()) {
    onPurchaseSearchProductAlertDialogOptionSelect(
        listIndex: listIndex!, isarId: isarId);
  }
}

getAlertDialogOptionLists({String? title}) {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesN()) {
    SalesController salesController = Get.find();
    return title == searchProductsN()
        ? salesController.searchProductFoundResult
        : salesController.searchCustomerFoundResult;
  } else if (currentPage == addProductN) {
    AddProductController addProductController = Get.find();
    if (title == selectCategoryN) {
      return addProductController.categoryListFoundResult;
    } else if (title == selectUomSN) {
      return addProductController.unitOfMeasurementListFoundResult;
    }
  } else if (currentPage == editProductN) {
    EditProductController editProductController = Get.find();
    if (title == selectCategoryN) {
      return editProductController.categoryListFoundResult;
    } else if (title == selectUomSN) {
      return editProductController.unitOfMeasurementListFoundResult;
    }
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    return purchaseController.searchProductFoundResult;
  }
}

getAlertDialogOptionName({required int index, String? title}) {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesN()) {
    SalesController salesController = Get.find();
    return title == searchProductsN()
        ? salesController.searchProductFoundResult[index].productName
        : salesController.searchCustomerFoundResult[index].name;
  } else if (currentPage == addProductN) {
    AddProductController addProductController = Get.find();
    if (title == selectCategoryN) {
      return (addProductController.categoryListFoundResult[index]).categoryName;
    } else if (title == selectUomSN) {
      return addProductController.unitOfMeasurementListFoundResult[index].name;
    }
  } else if (currentPage == editProductN) {
    EditProductController editProductController = Get.find();
    if (title == selectCategoryN) {
      return editProductController.categoryListFoundResult[index].categoryName;
    } else if (title == selectUomSN) {
      return editProductController.unitOfMeasurementListFoundResult[index].name;
    }
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    return purchaseController.searchProductFoundResult[index].productName;
  }
}

getAlertDialogOptionId({required int index, required String title}) {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesN()) {
   return onSalesAlertDialogOption(title: title, index: index);
  } else if (currentPage == addProductN) {
    AddProductController addProductController = Get.find();
    if (title == selectCategoryN) {
      return addProductController.categoryListFoundResult[index].id;
    } else if (title == selectUomSN) {
      return addProductController.unitOfMeasurementListFoundResult[index].id;
    }
  } else if (currentPage == editProductN) {
    EditProductController editProductController = Get.find();
    if (title == selectCategoryN) {
      return editProductController.categoryListFoundResult[index].id;
    } else if (title == selectUomSN) {
      return editProductController.unitOfMeasurementListFoundResult[index].id;
    }
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    return purchaseController.searchProductFoundResult[index].id;
  }
}
getEmptyMessage({required String title}){
  if(title == selectCategoryN){
    return noCategoryAvailableSN;
  }else if(title == searchCustomersN){
    return noCustomerAvailableSN;
  }else if(title == selectUomSN){
    return noUomAvailableSN;
  }
}