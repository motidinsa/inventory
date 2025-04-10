import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:inventory/add_sales/controller/add_sales_controller.dart';


import 'package:inventory/core/functions/helper_functions.dart';

int getSalesAlertDialogProductLength() {
  return Get.find<AddSalesController>().searchProductFoundResult.length;
}

getSalesSubtotal() {
  AddSalesController salesController = Get.find();
  double subTotal = 0;
  for (var element in salesController.salesModels) {
    subTotal += double.parse(element.totalAmount.toString());
  }
  salesController.subtotal=subTotal.toString();
  return salesController.subtotal;
}
getCreditAmount() {
  // AddSalesController salesController = Get.find();
  // double subTotal = 0;
  // // if(salesController.total)
  // for (var element in salesController.salesModels) {
  //   subTotal += double.parse(element.totalAmount.toString());
  // }
  // salesController.subtotal=subTotal.toString();
  // return double.parse(source);
}

getSalesTotal() {
  AddSalesController salesController = Get.find();
  double total = 0;

  for (var element in salesController.salesModels) {
    total += element.totalAmount;
  }
  if (isNumeric(salesController.discount)) {
    salesController.total=
        (total - double.parse(salesController.discount)).toString();
    salesController.cashReceived =
        getFormattedNumberWithoutComa(salesController.total);
    if(salesController.cashReceived == '0'){
      salesController.cashReceived = '';
    }
  } else if (salesController.discount.isEmpty) {
    salesController.cashReceived = getFormattedNumberWithoutComa(total.toString());
    salesController.total=total.toString();
    if(salesController.cashReceived == '0'){
      salesController.cashReceived = '';
    }
  }
  // else {
  //   salesController.cashReceived = '';
  //   salesController.total='0';
  // }
  return salesController.total;
}
