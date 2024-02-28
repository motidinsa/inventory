import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/purchase_controller.dart';

getPurchaseSubtotal() {
  PurchaseController purchaseController = Get.find();
  double total = 0;
  for (var element in purchaseController.purchaseModels) {
    total += element.value.price;
  }
  return total.toString();
}

getPurchaseTotal() {
  PurchaseController purchaseController = Get.find();
  double total = 0;
  for (var element in purchaseController.purchaseModels) {
    total += element.value.totalAmount;
  }
  return total.toString();
}