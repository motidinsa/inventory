import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

import 'package:my_inventory/edit_product/controller/edit_product_controller.dart';

import 'package:my_inventory/sales/functions/sales_helper_functions.dart';

import '../../../add_purchase/controller/add_purchase_controller.dart';
import '../../../add_purchase/functions/add_purchase_helper_functions.dart';

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
    AddPurchaseController addPurchaseController = Get.find();
    return addPurchaseController.purchaseModels[index].cost;
  }
}

getProductTotalPrice({required int index}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.sales) {
    SalesController salesController = Get.find();
    return salesController.salesModels[index].totalAmount;
  } else if (currentRoute == RouteName.purchase) {
    AddPurchaseController addPurchaseController = Get.find();
    return addPurchaseController.purchaseModels[index].totalAmount;
  }
}

String? getProductImagePath() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addProduct) {
    final AddProductController addProductController = AddProductController.to;
    return addProductController.productModel.localImagePath;
  } else if (currentRoute == RouteName.editProduct) {
    final EditProductController editProductController = EditProductController.to;
    return editProductController.productInfo.value.localImagePath;
  }
  return null;
}


onProductDelete({required int index}){
  if(Get.currentRoute == RouteName.sales){
    SalesController.to.salesModels.removeAt(index);
  }else{
    AddPurchaseController.to.purchaseModels.removeAt(index);
  }
}