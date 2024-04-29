import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/purchase/functions/purchase_functions.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

import 'package:my_inventory/edit_product/controller/edit_product_controller.dart';

import 'package:my_inventory/sales/functions/sales_helper_functions.dart';

getSubtotal() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    return getSalesSubtotal();
  } else if (currentRoute == RouteName.purchase) {
    return getPurchaseSubtotal();
  }
}

getTotal() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    return getSalesTotal();
  } else if (currentRoute == RouteName.purchase) {
    return getPurchaseTotal();
  }
}

getProductPrice({required int index}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    SalesController salesController = Get.find();
    String currentPrice = salesController.salesModels[index].price;
    return double.parse(currentPrice.isEmpty ? '0' : currentPrice);
  } else if (currentRoute == RouteName.purchase) {
    PurchaseController purchaseController = Get.find();
    return purchaseController.purchaseModels[index].cost;
  }
}

getProductTotalPrice({required int index}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    SalesController salesController = Get.find();
    return salesController.salesModels[index].totalAmount;
  } else if (currentRoute == RouteName.purchase) {
    PurchaseController purchaseController = Get.find();
    return purchaseController.purchaseModels[index].totalAmount;
  }
}

getProductImagePath() {
  final AppController appController = Get.find();
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addProduct) {
    final AddProductController addProductController = Get.find();
    return addProductController.productInfo.value.localImagePath;
  } else if (currentRoute == RouteName.editProduct) {
    final EditProductController editProductController = Get.find();
    return editProductController.productInfo.value.localImagePath;
  }
  return null;
}

getSuffix() {
  final AppController appController = Get.find();
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addProduct) {
    final AddProductController addProductController = Get.find();
    return addProductController.productInfo.value.unitOfMeasurementName;
  } else if (currentRoute == RouteName.editProduct) {
    final EditProductController editProductController = Get.find();
    return editProductController.productInfo.value.unitOfMeasurementName;
  }
}

onImageDeleteButtonPressed() {
  final AppController appController = Get.find();
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addProduct) {
    AddProductController addProductController = Get.find();
    addProductController.productInfo.update((val) {
      val?.localImagePath = null;
    });
  } else if (currentRoute == RouteName.editProduct) {
    EditProductController editProductController = Get.find();
    editProductController.productInfo.update((val) {
      val?.localImagePath = null;
    });
  }
}
onProductDelete({required int index}){
  if(Get.currentRoute == RouteName.sales){
    SalesController.to.salesModels.removeAt(index);
  }else{
    PurchaseController.to.purchaseModels.removeAt(index);
  }
}