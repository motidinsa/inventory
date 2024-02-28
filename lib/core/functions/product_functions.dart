import 'package:get/get.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

import '../../purchase/functions/purchase_functions.dart';
import '../../sales/functions/sales_functions.dart';
import '../constants/name_constants.dart';

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
    return salesController.salesModels[index].value.price.toString();
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    return purchaseController.purchaseModels[index].value.price.toString();
  }
}

getProductTotalPrice({required String currentPage, required int index}) {
  if (currentPage == salesN()) {
    SalesController salesController = Get.find();
    return salesController.salesModels[index].value.totalAmount.toString();
  } else if (currentPage == purchaseN()) {
    PurchaseController purchaseController = Get.find();
    return purchaseController.purchaseModels[index].value.totalAmount
        .toString();
  }
}
