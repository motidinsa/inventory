import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:inventory/core/controller/app_controller.dart';
import 'package:inventory/core/styles/styles.dart';

import 'package:inventory/core/ui/alert_dialog/alert_dialog_confirmation.dart';
import 'package:inventory/core/functions/alert_dialog/alert_dialog_functions.dart';

import 'package:inventory/add_customer/controller/add_customer_controller.dart';
import 'package:inventory/add_sales/controller/add_sales_controller.dart';
import 'package:inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:inventory/signup/controller/signup_controller.dart';
import 'package:inventory/core/routes/route_names.dart';

import '../../add_purchase/controller/add_purchase_controller.dart';

unFocus() => FocusManager.instance.primaryFocus?.unfocus();

void executeAfterBuild(VoidCallback function) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    function();
  });
}

bool isNumeric(String input) {
  final numberRegExp = RegExp(r'^[-+]?[0-9]+(\.[0-9]+)?$');
  return numberRegExp.hasMatch(input);
}

String generateDatabaseId({required DateTime time, var identifier}) {
  final DateFormat dateFormatter =
      DateFormat('yyyyMMdd_HmsS${identifier != null ? '_$identifier' : ''}');
  String key = dateFormatter.format(time);
  return key;
}

double getValidNumValue(String data) {
  if (isNumeric(data)) {
    return double.parse(data);
  }
  return 0;
}

String getFormattedNumberWithComa(double num) {
  return NumberFormat("#,###.##").format(num);
}

String getFormattedNumberWithoutComa(num) {
  if (isNumeric(num.toString())) {
    return NumberFormat("###.##").format(double.parse(num.toString()));
  }
  return num.toString();
}

String? nullIfEmpty(String? data) {
  if (data != null) {
    if (data.isEmpty) {
      return null;
    }
  }
  return data;
}

String emptyIfNull(String? data) {
  if (data != null) {
    return data;
  }
  return '';
}

String emptyIfDefaultValue(var data) {
  var emptyLists = [0, '0.0', '0'];
  if (!emptyLists.contains(data)) {
    return data.toString();
  }
  return '';
}

showSnackbar(
    {required String message,
    TextStyle? style,
    Duration? duration,
    bool? success}) {
  ScaffoldMessenger.of(Get.context!).clearSnackBars();
  ScaffoldMessenger.of(Get.context!).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: style ?? const TextStyle(color: Colors.white, fontSize: 16),
      ),
      duration: duration ?? const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      shape: smoothRectangleBorder(radius: 12),
      dismissDirection: DismissDirection.horizontal,
      backgroundColor: success == true
          ? Colors.green.shade400
          : success == false
              ? Colors.red.shade400
              : Colors.grey.shade800,
    ),
  );
}

showAlertDialogConfirmation() {
  Get.dialog(GestureDetector(
    onTap: () => unFocus(),
    child: AlertDialogConfirmation(
      confirmationText: getAlertDialogConfirmationMessage(),
    ),
  ));
}

DateTime getSelectedDate() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.addSales) {
    return AddSalesController.to.selectedSalesDate;
  } else if (currentRoute == RouteName.addPurchase) {
    return AddPurchaseController.to.selectedPurchaseDate;
  }else if (currentRoute == RouteName.customerDetail) {
    return CustomerDetailController.to.customerPaymentDate;
  }
  return DateTime.now();
}

bool isActionButtonLoading() {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.signUp) {
    return SignupController.to.isLoading;
  }
  if (currentRoute == RouteName.addCustomer) {
    return AddCustomerController.to.isLoading;
  }
  return false;
}
