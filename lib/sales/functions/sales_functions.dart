import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

import 'package:my_inventory/main.dart';

onSalesTextFieldChange({
  String? title,
  required String data,
  int? index,
}) {
  SalesController salesController = Get.find();
  if (title == searchProductsN()) {
    salesController.searchProductFoundResult(salesController.products
        .where((product) =>
            product.productName.toLowerCase().contains(data.toLowerCase()))
        .toList());
  } else if (title == quantityN()) {
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
  } else if (title == discountN()) {
    salesController.discount(data);
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
    {required int listIndex,required String productId}) {

  ProductDatabaseModel productDatabaseModel = isar.productDatabaseModels
      .filter()
      .productIdEqualTo(productId)
      .findFirstSync()!;
  final SalesController salesController = Get.find();

  salesController.salesModels[listIndex].update((sales) {
    sales?.productName = productDatabaseModel.productName;
    sales?.productId = productDatabaseModel.productId;
    sales?.price = productDatabaseModel.price.toString();
    if (sales!.quantity.isNotEmpty && isNumeric(sales.quantity)) {
      sales.totalAmount = double.parse(sales.quantity) * productDatabaseModel.price;
    }
  });
}

int getSalesAlertDialogProductLength() {
  SalesController salesController = Get.find();
  return salesController.searchProductFoundResult.length;
}

getSalesSubtotal() {
  SalesController salesController = Get.find();
  double subTotal = 0;
  for (var element in salesController.salesModels) {
    // if (isNumeric(element.value.price)) {
    subTotal += double.parse(element.value.totalAmount.toString());
    // }
  }
  salesController.subtotal(subTotal.toString());
  return salesController.subtotal.value;
}

getSalesTotal() {
  SalesController salesController = Get.find();
  double total = 0;

  for (var element in salesController.salesModels) {
    total += element.value.totalAmount;
  }
  if (isNumeric(salesController.discount.value)) {
    salesController.total(
        (total - double.parse(salesController.discount.value)).toString());
  } else if (salesController.discount.isEmpty) {
    salesController.total(total.toString());
  }
  return salesController.total.value;
}
