import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

import 'package:my_inventory/core/functions/core_functions.dart';

onSalesTextFieldChange({
  String? title,
  required String data,
  int? index,
}) {
  if (title == searchProductsN()) {
    SalesController salesController = Get.find();
    salesController.searchProductFoundResult(salesController.products
        .where((product) =>
            product.name.toLowerCase().contains(data.toLowerCase()))
        .toList());
  } else if (title == quantityN()) {
    SalesController salesController = Get.find();
    salesController.salesModels[index!].update((sales) {
      if (data.isEmpty) {
        sales?.quantity = '';
        sales?.totalAmount = 0;
      } else {
        sales?.quantity = data;
        if (isNumeric(sales!.quantity) && isNumeric(sales.price)) {
          sales.totalAmount = double.parse(data) * double.parse(sales.price);
        } else {
          sales.totalAmount = 0;
        }
      }
    });
  }
}

onSalesProductFocusChange({
  required String title,
  required String data,
}) {
  final SalesController salesController = Get.find();
  if (title == discountN()) {
    salesController.discount(data);
  }
}

onSalesSearchProductAlertDialogOptionSelect(
    {required ProductModel productModel, required int index}) {
  final SalesController salesController = Get.find();
  salesController.salesModels[index].update((sales) {
    sales?.productName = productModel.name;
    sales?.productId = productModel.id;
    sales?.price = productModel.price.toString();
    if (sales!.quantity.isNotEmpty && isNumeric(sales.quantity)) {
      sales.totalAmount = double.parse(sales.quantity) * productModel.price;
    }
  });
}

getSalesAlertDialogProductLength() {
  SalesController salesController = Get.find();
  return salesController.searchProductFoundResult.length;
}

getSalesSubtotal() {
  SalesController salesController = Get.find();
  double total = 0;
  for (var element in salesController.salesModels) {
    if (isNumeric(element.value.price)) {
      total += double.parse(element.value.price);
    }
  }
  return total.toString();
}

getSalesTotal() {
  SalesController salesController = Get.find();
  double total = 0;
  for (var element in salesController.salesModels) {
    total += element.value.totalAmount;
  }
  return total.toString();
}
