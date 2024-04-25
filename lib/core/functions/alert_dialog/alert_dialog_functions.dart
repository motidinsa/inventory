import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/add_product/functions/add_product_functions.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/edit_product/controller/edit_product_controller.dart';
import 'package:my_inventory/edit_product/functions/edit_product_functions.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/purchase/functions/purchase_functions.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:my_inventory/sales/functions/sales_functions.dart';

import '../../routes/route_names.dart';


onAlertDialogOptionSelect(
    {required String title,
    required int isarId,
    required String data,
    int? listIndex}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    onSalesSearchProductAlertDialogOptionSelect(
        listIndex: listIndex, isarId: isarId, title: title);
  } else if (currentRoute == RouteName.addProduct) {
    onAddProductAlertDialogOptionSelect(
        title: title, data: data, isarId: isarId);
  } else if (currentRoute == RouteName.editProduct) {
    onEditProductAlertDialogOptionSelect(
        title: title, data: data, isarId: isarId);
  } else if (currentRoute == RouteName.purchase) {
    onPurchaseSearchProductAlertDialogOptionSelect(
        listIndex: listIndex, isarId: isarId,title: title);
  }
}

getAlertDialogOptionLists({String? title}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    SalesController salesController = Get.find();
    return title == searchProductsN
        ? salesController.searchProductFoundResult
        : salesController.searchCustomerFoundResult;
  } else if (currentRoute == RouteName.addProduct) {
    AddProductController addProductController = Get.find();
    if (title == selectCategoryN) {
      return addProductController.categoryListFoundResult;
    } else if (title == selectUomSN) {
      return addProductController.unitOfMeasurementListFoundResult;
    }
  } else if (currentRoute == RouteName.editProduct) {
    EditProductController editProductController = Get.find();
    if (title == selectCategoryN) {
      return editProductController.categoryListFoundResult;
    } else if (title == selectUomSN) {
      return editProductController.unitOfMeasurementListFoundResult;
    }
  } else if (currentRoute == RouteName.purchase) {
    PurchaseController purchaseController = Get.find();
    return title == searchProductsN
        ? purchaseController.searchProductFoundResult
        : purchaseController.searchVendorFoundResult;
  }
}

getAllAlertDialogOptionLists({String? title}) {
  final Isar isar = Get.find();
  if (title == selectCategoryN) {
    return isar.categoryDatabaseModels.where().findAllSync();
  } else if (title == selectUomSN) {
    return isar.unitOfMeasurementDatabaseModels.where().findAllSync();
  } else if (title == searchCustomersN) {
    return isar.customerDatabaseModels.where().findAllSync();
  } else if (title == searchVendorsN) {
    return isar.vendorDatabaseModels.where().findAllSync();
  } else if (title == searchProductsN) {
    return isar.productDatabaseModels.where().findAllSync();
  }
}

getAlertDialogOptionName({required int index, String? title}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    SalesController salesController = Get.find();
    return title == searchProductsN
        ? salesController.searchProductFoundResult[index].productName
        : salesController.searchCustomerFoundResult[index].name;
  } else if (currentRoute == RouteName.addProduct) {
    AddProductController addProductController = Get.find();
    if (title == selectCategoryN) {
      return (addProductController.categoryListFoundResult[index]).categoryName;
    } else if (title == selectUomSN) {
      return addProductController.unitOfMeasurementListFoundResult[index].name;
    }
  } else if (currentRoute == RouteName.editProduct) {
    EditProductController editProductController = Get.find();
    if (title == selectCategoryN) {
      return editProductController.categoryListFoundResult[index].categoryName;
    } else if (title == selectUomSN) {
      return editProductController.unitOfMeasurementListFoundResult[index].name;
    }
  } else if (currentRoute == RouteName.purchase) {
    PurchaseController purchaseController = Get.find();
    return title == searchProductsN
        ? purchaseController.searchProductFoundResult[index].productName
        : purchaseController.searchVendorFoundResult[index].name;
  }
}

getAlertDialogOptionId({required int index, required String title}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    return onSalesAlertDialogOption(title: title, index: index);
  }if (currentRoute == RouteName.purchase) {
    return onPurchaseAlertDialogOption(title: title, index: index);
  } else if (currentRoute == RouteName.addProduct) {
    AddProductController addProductController = Get.find();
    if (title == selectCategoryN) {
      return addProductController.categoryListFoundResult[index].id;
    } else if (title == selectUomSN) {
      return addProductController.unitOfMeasurementListFoundResult[index].id;
    }
  } else if (currentRoute == RouteName.editProduct) {
    EditProductController editProductController = Get.find();
    if (title == selectCategoryN) {
      return editProductController.categoryListFoundResult[index].id;
    } else if (title == selectUomSN) {
      return editProductController.unitOfMeasurementListFoundResult[index].id;
    }
  } else if (currentRoute == RouteName.purchase) {
    PurchaseController purchaseController = Get.find();
    return purchaseController.searchProductFoundResult[index].id;
  }
}

getEmptyMessage({required String title}) {
  if (title == selectCategoryN) {
    return noCategoryAvailableSN;
  } else if (title == searchCustomersN) {
    return noCustomerAvailableSN;
  } else if (title == selectUomSN) {
    return noUomAvailableSN;
  } else if (title == searchVendorsN) {
    return noVendorAvailableSN;
  }else if (title == searchProductsN) {
    return noProductAvailableSN;
  }
}
