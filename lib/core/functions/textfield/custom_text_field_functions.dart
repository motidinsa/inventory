import 'package:get/get.dart';
import 'package:my_inventory/add_customer/functions/add_customer_functions.dart';
import 'package:my_inventory/add_product/functions/add_product_functions.dart';
import 'package:my_inventory/add_vendor/functions/add_vendor_functions.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/report/report_functions.dart';
import 'package:my_inventory/customer_list/functions/customer_list_functions.dart';
import 'package:my_inventory/edit_customer/functions/edit_customer_functions.dart';
import 'package:my_inventory/edit_product/functions/edit_product_functions.dart';
import 'package:my_inventory/edit_vendor/functions/edit_vendor_functions.dart';
import 'package:my_inventory/product_list/functions/product_list_functions.dart';
import 'package:my_inventory/add_sales/controller/add_sales_controller.dart';
import 'package:my_inventory/vendor_list/functions/vendor_list_functions.dart';

import 'package:my_inventory/add_sales/functions/add_sales_functions.dart';

import 'package:my_inventory/core/routes/route_names.dart';

import 'package:my_inventory/signup/functions/signup_functions.dart';

import '../../../add_purchase/functions/add_purchase_functions.dart';

onTextFieldChange({
  String? title,
  required String data,
  int? index,
}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.signUp) {
    onSignUpTextFieldChange(title: title!, data: data);
  } else if (currentRoute == RouteName.addSales) {
    onSalesTextFieldChange(data: data, index: index, title: title);
    AddSalesController.to.update();
  } else if (currentRoute == RouteName.addCustomer) {
    onAddCustomerTextFieldChange(data: data, title: title!);
  } else if (currentRoute == RouteName.editCustomer) {
    onEditCustomerTextFieldChange(data: data, title: title!);
  } else if (currentRoute == RouteName.addProduct) {
    onAddProductTextFieldChange(data: data, title: title!);
  } else if (currentRoute == RouteName.editProduct) {
    onEditProductTextFieldChange(data: data, index: index, title: title);
  } else if (currentRoute == RouteName.addPurchase) {
    onPurchaseTextFieldChange(data: data, index: index, title: title);
  } else if (currentRoute == productListN) {
    onProductListTextFieldChange(data: data);
  } else if (currentRoute == RouteName.customerList) {
    onCustomerListTextFieldChange(data: data);
  } else if (currentRoute == vendorListN) {
    onVendorListTextFieldChange(data: data);
  }else if (currentRoute == RouteName.addVendor) {
    onAddVendorTextFieldChange(data: data, title: title!);
  }else if (currentRoute == RouteName.vendorList) {
    onVendorListTextFieldChange(data: data);
  }else if (currentRoute == RouteName.editVendor) {
    onEditVendorTextFieldChange(data: data, title: title!);
  }
}

onTextFieldPressed({required String title, int? index}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addProduct) {
    onAddProductTextFieldPressed(title: title);
  } else if (currentRoute == RouteName.editProduct) {
    onEditProductTextFieldPressed(title: title);
  }  else if (currentRoute == RouteName.addPurchase) {
    onPurchaseTextFieldPressed(title: title, index: index);
  }else if (currentRoute == RouteName.addSales) {
    onAddSalesTextFieldPressed(title: title, index: index);
  } else if ([RouteName.salesReport, RouteName.purchaseReport, RouteName.paymentReport]
      .contains(currentRoute)) {
    onReportFilterSelect(title: title);
  }
}

