import 'package:get/get.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

getSalesSubtotal() {
  SalesController salesController = Get.find();
  double total = 0;
  for (var element in salesController.salesModel) {
    total += element.value.price;
  }
  return total.toString();
}

getSalesTotal() {
  SalesController salesController = Get.find();
  double total = 0;
  for (var element in salesController.salesModel) {
    total += element.value.totalAmount;
  }
  return total.toString();
}
