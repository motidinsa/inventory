import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/add_sales/controller/add_sales_controller.dart';

import 'package:my_inventory/edit_product/controller/edit_product_controller.dart';

import 'package:my_inventory/add_sales/functions/add_sales_helper_functions.dart';

import '../../../add_purchase/controller/add_purchase_controller.dart';
import '../../../add_purchase/functions/add_purchase_helper_functions.dart';

getSubtotal() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addSales) {
    return getSalesSubtotal();
  } else if (currentRoute == RouteName.addPurchase) {
    return getPurchaseSubtotal();
  }
}

String  getTotal() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addSales) {
    return getSalesTotal();
  } else if (currentRoute == RouteName.addPurchase) {
    return getPurchaseTotal();
  }
  return '0';
}
String  getCredit() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addSales) {
    return getSalesTotal();
  }
  // else if (currentRoute == RouteName.addPurchase) {
  //   return getPurchaseTotal();
  // }
  return '0';
}

double getProductPrice({required int index}) {
  String currentRoute = Get.currentRoute;
  // if (currentRoute == RouteName.sales) {
  //   SalesController salesController = Get.find();
  //   String currentPrice = salesController.salesModels[index].price;
  //   return double.parse(currentPrice.isEmpty ? '0' : currentPrice);
  // } else
    if (currentRoute == RouteName.addPurchase) {
    AddPurchaseController addPurchaseController = Get.find();
    return double.parse(addPurchaseController.purchaseModels[index].cost);
  }
    return 0;
}

double getProductTotalPrice({required int index}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addSales) {
    AddSalesController salesController = Get.find();
    return salesController.salesModels[index].totalAmount;
  } else if (currentRoute == RouteName.addPurchase) {
    AddPurchaseController addPurchaseController = Get.find();
    return addPurchaseController.purchaseModels[index].totalAmount;
  }
  return 0;
}

String? getProductImagePath() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addProduct) {
    return AddProductController.to.productModel.localImagePath;
  } else if (currentRoute == RouteName.editProduct) {
    return EditProductController.to.productModel.localImagePath;
  }
  return null;
}


onProductDelete({required int index}){
  if(Get.currentRoute == RouteName.addSales){
    AddSalesController.to.salesModels.removeAt(index);
  }else{
    AddPurchaseController.to.purchaseModels.removeAt(index);
  }
}