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
    required String id,
    ProductDatabaseModel? productModel,
    String? data,
    int? index}) {
  final AppController appController = Get.find();
  String currentPage = appController.currentPages.last;
  if (currentPage == salesN()) {
    onSalesSearchProductAlertDialogOptionSelect(
        productModel: productModel!, index: index!);
  } else if (currentPage == addProductN) {
    onAddProductAlertDialogOptionSelect(title: title, data: data!, id: id);
  } else if (currentPage == editProductN) {
    onEditProductAlertDialogOptionSelect(title: title, data: data!, id: id);
  } else if (currentPage == purchaseN()) {
    onPurchaseSearchProductAlertDialogOptionSelect(
        productModel: productModel!, index: index!);
  }
  Get.back();
}

getAlertDialogOptionLists({String? title}) {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesN()) {
    SalesController salesController = Get.find();
    return salesController.searchProductFoundResult;
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
    return (salesController.searchProductFoundResult[index].value
            as ProductDatabaseModel)
        .productName;
  } else if (currentPage == addProductN) {
    AddProductController addProductController = Get.find();
    if (title == selectCategoryN) {
      return (addProductController.categoryListFoundResult[index]
              as CategoryDatabaseModel)
          .categoryName;
    } else if (title == selectUomSN) {
      return (addProductController.unitOfMeasurementListFoundResult[index]
              as UnitOfMeasurementDatabaseModel)
          .name;
    }
  } else if (currentPage == editProductN) {
    EditProductController editProductController = Get.find();
    if (title == selectCategoryN) {
      return (editProductController.categoryListFoundResult[index]
              as CategoryDatabaseModel)
          .categoryName;
    } else if (title == selectUomSN) {
      return (editProductController.unitOfMeasurementListFoundResult[index]
              as UnitOfMeasurementDatabaseModel)
          .name;
    }
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    return (purchaseController.searchProductFoundResult[index]
            as ProductDatabaseModel)
        .productName;
  }
}

getAlertDialogOptionId({required int index, String? title}) {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesN()) {
    SalesController salesController = Get.find();
    return (salesController.searchProductFoundResult[index].value
            as ProductDatabaseModel)
        .productId;
  } else if (currentPage == addProductN) {
    AddProductController addProductController = Get.find();
    if (title == selectCategoryN) {
      return (addProductController.categoryListFoundResult[index]
              as CategoryDatabaseModel)
          .categoryId;
    } else if (title == selectUomSN) {
      return (addProductController.unitOfMeasurementListFoundResult[index]
              as UnitOfMeasurementDatabaseModel)
          .uomId;
    }
  } else if (currentPage == editProductN) {
    EditProductController editProductController = Get.find();
    if (title == selectCategoryN) {
      return (editProductController.categoryListFoundResult[index]
              as CategoryDatabaseModel)
          .categoryId;
    } else if (title == selectUomSN) {
      return (editProductController.unitOfMeasurementListFoundResult[index]
              as UnitOfMeasurementDatabaseModel)
          .uomId;
    }
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    return (purchaseController.searchProductFoundResult[index]
            as ProductDatabaseModel)
        .productId;
  }
}
