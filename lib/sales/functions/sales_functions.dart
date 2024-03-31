import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/main.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

onSalesTitleToData({required String title, int? index}) {
  SalesController salesController = Get.find();
  if (title == salesN()) {
    return salesController.salesModels[index!].value.productName;
  } else if (title == selectN) {
    return salesController.customerName;
  } else if (title == quantityN()) {
    return salesController.salesModels[index!].value.quantity;
  }
}

onSalesAlertDialogOption({required String title, required int index}) {
  SalesController salesController = Get.find();
  if (title == searchProductsN()) {
    return salesController.searchProductFoundResult[index].id;
  } else if (title == searchCustomersN) {
    return salesController.searchCustomerFoundResult[index].id;
  }
}

onSalesTextFieldChange({
  String? title,
  required String data,
  int? index,
}) {
  SalesController salesController = Get.find();
  if (title == searchProductsN()) {
    salesController.searchProductFoundResult(isar.productDatabaseModels
        .filter()
        .productNameContains(data, caseSensitive: false)
        .findAllSync());
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
  } else if (title == searchCustomersN) {
    salesController.searchCustomerFoundResult(isar.customerDatabaseModels
        .filter()
        .nameContains(data, caseSensitive: false)
        .findAllSync());
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
    {int? listIndex, required int isarId, required String title}) {
  final SalesController salesController = Get.find();
  if (title == searchProductsN()) {
    ProductDatabaseModel productDatabaseModel =
        isar.productDatabaseModels.getSync(isarId)!;

    bool productExists = salesController.salesModels.any((salesModel) =>
        salesModel.value.productId == productDatabaseModel.productId);

    if (!productExists) {
      salesController.salesModels[listIndex!].update((sales) {
        sales?.productName = productDatabaseModel.productName;
        sales?.productId = productDatabaseModel.productId;
        sales?.price = productDatabaseModel.price.toString();
        if (sales!.quantity.isNotEmpty && isNumeric(sales.quantity)) {
          sales.totalAmount =
              double.parse(sales.quantity) * productDatabaseModel.price;
        }
      });
      Get.back();
    } else {
      if (productDatabaseModel.productId !=
          salesController.salesModels[listIndex!].value.productId) {
        Get.closeCurrentSnackbar();
        salesController.salesModels.removeAt(listIndex);
        Get.showSnackbar(const GetSnackBar(
          messageText: Text(
            'Product already exists',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
          ),
          duration: Duration(seconds: 2),
          margin: EdgeInsets.all(10),
          borderRadius: 10,
        ));
        Get.key.currentState?.pop();
      } else {
        Get.back();
      }
    }
  } else if (title == searchCustomersN) {
    CustomerDatabaseModel customerDatabaseModel =
        isar.customerDatabaseModels.getSync(isarId)!;
    salesController.customerId = customerDatabaseModel.customerId;
    salesController.customerName = customerDatabaseModel.name;
    salesController.customerPhone = customerDatabaseModel.phone;
    salesController.customerAddress = customerDatabaseModel.address;
    salesController.update();
    Get.back();
  }
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
