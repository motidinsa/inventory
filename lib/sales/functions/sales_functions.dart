import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/sales/sales_model.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:my_inventory/sales/functions/sales_helper_functions.dart';
import 'package:my_inventory/sales/repository/sales_repository.dart';

onSalesTitleToData({required String title, int? index}) {
  SalesController salesController = Get.find();
  if (title == salesN) {
    return salesController.salesModels[index!].productName;
  } else if (title == selectN) {
    return salesController.customerName;
  } else if (title == quantityN) {
    return salesController.salesModels[index!].quantity;
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
  if (title == searchProductsN) {
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
  final Isar isar = Get.find();
  if (title == searchProductsN) {
    salesController.searchProductFoundResult(isar.productDatabaseModels
        .filter()
        .productNameContains(data, caseSensitive: false)
        .findAllSync());
  } else if (title == quantityN) {
    SalesModel sales = salesController.salesModels[index!];

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
    // });
    salesController.update();
  } else if (title == discountN) {
    salesController.discount = data;
  } else if (title == cashN) {
    salesController.cash = data;
    if (isNumeric(salesController.total) &&
        isNumeric(data) &&
        isNumeric(salesController.transfer)) {
      salesController.credit = getFormattedNumberWithoutComa(
          (double.parse(salesController.total) -
              double.parse(data) -
              double.parse(salesController.transfer)));
    } else {
      salesController.credit = '0';
    }
  } else if (title == transferN) {
    salesController.transfer = data;
    if (!['', '0'].contains(salesController.cash) &&
        isNumeric(salesController.total) &&
        isNumeric(salesController.cash) &&
        isNumeric(data)) {
      salesController.credit = getFormattedNumberWithoutComa(
          (double.parse(salesController.total) -
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
  if (title == discountN) {
    salesController.discount = data;
  }
}

onSalesSearchProductAlertDialogOptionSelect(
    {int? listIndex, required int isarId, required String title}) {
  final SalesController salesController = Get.find();
  final Isar isar = Get.find();
  if (title == searchProductsN) {
    ProductDatabaseModel productDatabaseModel =
        isar.productDatabaseModels.getSync(isarId)!;

    bool productExists = salesController.salesModels.any(
        (salesModel) => salesModel.productId == productDatabaseModel.productId);

    if (!productExists) {
      SalesModel sales = salesController.salesModels[listIndex!];
      // salesController.salesModels[listIndex!].update((sales) {
      sales.productName = productDatabaseModel.productName;
      sales?.productId = productDatabaseModel.productId;
      sales?.price = productDatabaseModel.price.toString();
      if (sales!.quantity.isNotEmpty && isNumeric(sales.quantity)) {
        sales.totalAmount =
            double.parse(sales.quantity) * productDatabaseModel.price;
      }
      // });
      Get.back();
    } else {
      if (productDatabaseModel.productId !=
          salesController.salesModels[listIndex!].productId) {
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
saveSalesProductToDB(){
  SalesRepository.saveSalesProductToDB();
}