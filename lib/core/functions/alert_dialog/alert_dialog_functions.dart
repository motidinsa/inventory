import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/add_product/functions/add_product_functions.dart';
import 'package:my_inventory/add_product/repository/add_product_repository.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:my_inventory/edit_product/controller/edit_product_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:my_inventory/sales/functions/sales_functions.dart';

import 'package:my_inventory/core/routes/route_names.dart';

import 'package:my_inventory/customer_detail/functions/customer_detail_functions.dart';

import 'package:my_inventory/vendor_detail/controller/vendor_detail_controller.dart';
import 'package:my_inventory/vendor_detail/functions/vendor_detail_functions.dart';

import '../../../add_purchase/controller/add_purchase_controller.dart';
import '../../../add_purchase/functions/add_purchase_functions.dart';
String? onAddProductTitleToData({required String title}) {
  ProductModel productModel =
      AddProductController.to.productModel;
  if (title == categoryN) {
    return productModel.categoryName;
  } else if (title == uomSN) {
    return productModel.unitOfMeasurementName;
  }
  // else if (title == phoneNumberN) {
  //   data = customerDatabaseModel.phoneNumber;
  // } else if (title == addressN) {
  //   data = customerDatabaseModel.address;
  // } else if (title == cityN) {
  //   data = customerDatabaseModel.city;
  // } else if (title == emailN) {
  //   data = customerDatabaseModel.email;
  // }
  return null;
}
onAlertDialogOptionSelect(
    {required String title,
    required int index,
    int? listIndex}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    onSalesSearchProductAlertDialogOptionSelect(
        listIndex: listIndex,  title: title);
  } else if (currentRoute == RouteName.addProduct) {
    onAddProductAlertDialogOptionSelect(
        title: title, index: index,);
  } else if (currentRoute == RouteName.editProduct) {
    // onEditProductAlertDialogOptionSelect(
    //     title: title,);
  } else if (currentRoute == RouteName.addPurchase) {
    onPurchaseSearchProductAlertDialogOptionSelect(
        listIndex: listIndex,  title: title,index: index);
  }
}

List getAlertDialogOptionLists({String? title}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    SalesController salesController = SalesController.to;
    return title == searchProductsN
        ? salesController.searchProductFoundResult
        : salesController.searchCustomerFoundResult;
  } else if (currentRoute == RouteName.addProduct) {
    AddProductController addProductController = AddProductController.to;
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
  } else if (currentRoute == RouteName.addPurchase) {
    AddPurchaseController addPurchaseController = AddPurchaseController.to;
    return title == searchProductsN
        ? addPurchaseController.searchProductFoundResult
        : addPurchaseController.searchVendorFoundResult;
  }
  return [];
}

bool isAlertDialogListEmpty({String? title}) {
  if (title == selectCategoryN) {
    return AddProductRepository.getCategoryCount() == 0;
  } else if (title == selectUomSN) {
    return AddProductRepository.getUnitOfMeasurementCount() == 0;
  }
  // else if (title == searchCustomersN) {
  //   return  isar.customerDatabaseModels.where().findAllSync();
  // } else if (title == searchVendorsN) {
  //   return  isar.vendorDatabaseModels.where().findAllSync();
  // } else if (title == searchProductsN) {
  //   return  isar.productDatabaseModels.where().findAllSync();
  // }
  return false;
}


String getAlertDialogOptionName({required int index, String? title}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    SalesController salesController = Get.find();
    return title == searchProductsN
        ? salesController.searchProductFoundResult[index].productName
        : salesController.searchCustomerFoundResult[index].name;
  } else if (currentRoute == RouteName.addProduct) {
    AddProductController addProductController = AddProductController.to;
    if (title == selectCategoryN) {
      return addProductController.categoryListFoundResult[index].categoryName;
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
  } else if (currentRoute == RouteName.addPurchase) {
    AddPurchaseController addPurchaseController = AddPurchaseController.to;
    return title == searchProductsN
        ? addPurchaseController.searchProductFoundResult[index].productName
        : addPurchaseController.searchVendorFoundResult[index].name;
  }
  return '';
}

getAlertDialogOptionId({required int index, required String title}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    return onSalesAlertDialogOption(title: title, index: index);
  }
  if (currentRoute == RouteName.addPurchase) {
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
  } else if (currentRoute == RouteName.addPurchase) {
    AddPurchaseController addPurchaseController = AddPurchaseController.to;
    return addPurchaseController.searchProductFoundResult[index].id;
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
  } else if (title == searchProductsN) {
    return noProductAvailableSN;
  }
}

String getAlertDialogConfirmationMessage() {
  String currentRoute = Get.currentRoute;
  String tobeDeletedName = '';
  if (currentRoute == RouteName.customerDetail) {
    tobeDeletedName = CustomerDetailController.to.customerDatabaseModel.name;
  } else if (currentRoute == RouteName.vendorDetail) {
    tobeDeletedName = VendorDetailController.to.vendorDatabaseModel.name;
  }
  return '$areYouSureYouWantToDeleteN $tobeDeletedName?';
}

onAlertDialogDeleteButtonPressed() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.customerDetail) {
    deleteCustomer();
  } else if (currentRoute == RouteName.vendorDetail) {
    deleteVendor();
  }
}
