import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/main.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

import '../../core/functions/product/product_functions.dart';

onSalesTitleToData({required String title, int? index}) {
  SalesController salesController = Get.find();
  if (title == salesN()) {
    return salesController.salesModels[index!].value.productName;
  } else if (title == selectN) {
    return salesController.customerName;
  } else if (title == quantityN()) {
    return salesController.salesModels[index!].value.quantity;
  } else if (title == cashN) {
    return salesController.cash != '0' ? salesController.cash : '';
  } else if (title == transferN) {
    return salesController.transfer;
  } else if (title == creditN) {
    return salesController.credit;
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
        salesController.cash = '';
        salesController.credit = '0';
      } else {
        sales?.quantity = data;
        if (isNumeric(sales!.quantity) && isNumeric(sales.price)) {
          sales.totalAmount = double.parse(data) * double.parse(sales.price);
          salesController.cash = getSalesTotal();
        } else {
          sales.totalAmount = 0;
          salesController.cash = '';
          salesController.credit = '0';
        }
      }
    });
    salesController.update();
  } else if (title == discountN()) {
    salesController.discount(data);
  } else if (title == cashN) {
    salesController.cash = data;
    if (isNumeric(salesController.total.value) &&
        isNumeric(data) &&
        isNumeric(salesController.transfer)) {
      salesController.credit = getFormattedNumberWithoutComa(
          (double.parse(salesController.total.value) -
              double.parse(data) -
              double.parse(salesController.transfer)));
    }else {
      salesController.credit = '0';
    }
  } else if (title == transferN) {
    salesController.transfer = data;
    if (!['', '0'].contains(salesController.cash) &&
        isNumeric(salesController.total.value) &&
        isNumeric(salesController.cash) &&
        isNumeric(data)) {
      salesController.credit = getFormattedNumberWithoutComa(
          (double.parse(salesController.total.value) -
              double.parse(salesController.cash) -
              double.parse(data)));
    } else {
      salesController.credit = '0';
    }
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
    salesController.cash =
        getFormattedNumberWithoutComa(salesController.total.value);
  } else if (salesController.discount.isEmpty) {
    salesController.cash = getFormattedNumberWithoutComa(total.toString());
    salesController.total(total.toString());
  } else {
    salesController.cash = '';
    salesController.total('0');
  }
  return salesController.total.value;
}
