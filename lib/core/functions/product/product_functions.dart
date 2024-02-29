import 'package:get/get.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

import 'package:my_inventory/purchase/functions/purchase_functions.dart';
import 'package:my_inventory/sales/functions/sales_functions.dart';
import 'package:my_inventory/core/constants/name_constants.dart';

getSubtotal({required String currentPage}) {
  if (currentPage == salesN()) {
    return getSalesSubtotal();
  } else if (currentPage == purchaseN()) {
    return getPurchaseSubtotal();
  }
}

getTotal({required String currentPage}) {
  if (currentPage == salesN()) {
    return getSalesTotal();
  } else if (currentPage == purchaseN()) {
    return getPurchaseTotal();
  }
}

getProductPrice({required String currentPage, required int index}) {
  if (currentPage == salesN()) {
    SalesController salesController = Get.find();
    return salesController.salesModels[index].value.price;
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    return purchaseController.purchaseModels[index].value.price;
  }
}

getProductTotalPrice({required String currentPage, required int index}) {
  if (currentPage == salesN()) {
    SalesController salesController = Get.find();
    return salesController.salesModels[index].value.totalAmount;
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    return purchaseController.purchaseModels[index].value.totalAmount;
  }
}
