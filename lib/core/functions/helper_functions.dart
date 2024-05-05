import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/styles/styles.dart';

import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_confirmation.dart';
import 'package:my_inventory/core/functions/alert_dialog/alert_dialog_functions.dart';

unFocus() => FocusManager.instance.primaryFocus?.unfocus();

// bool isNumeric(String input) {
//   final numberRegExp = RegExp(r'^[-+]?[0-9]+(\.[0-9]+)?$');
//   return numberRegExp.hasMatch(input);
// }

// generateDatabaseId({required DateTime time, var identifier}) {
//   final DateFormat dateFormatter =
//       DateFormat('yyyyMMdd_HmsS${identifier != null ? '_$identifier' : ''}');
//   String key = dateFormatter.format(time);
//   return key;
// }

// double getValidNumValue(String data) {
//   if (isNumeric(data)) {
//     return double.parse(data);
//   }
//   return 0;
// }
//
// getFormattedNumberWithComa(double num) {
//   return NumberFormat("#,###.##").format(num);
// }
//
// getFormattedNumberWithoutComa(num) {
//   if (isNumeric(num.toString())) {
//     return NumberFormat("###.##").format(double.parse(num.toString()));
//   }
//   return num.toString();
// }
//
// emptyIfNull(String? data) {
//   if (data != null) {
//     return data;
//   }
//   return '';
// }
//
// emptyIfDefaultValue(var data) {
//   var emptyLists = [0, '0.0', '0'];
//   if (!emptyLists.contains(data)) {
//     return data.toString();
//   }
//   return '';
// }
//
// nullIfEmpty(String? data) {
//   if (data != null) {
//     if (data.isEmpty) {
//       return null;
//     }
//   }
//   return data;
// }

showSnackbar(
    {required String message,
    Color? backgroundColor,
    TextStyle? style,
    Duration? duration}) {
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
      backgroundColor: backgroundColor ?? Colors.green.shade400,
    ),
  );
}

showAlertDialogConfirmation() {
  Get.dialog(GestureDetector(
    onTap: () => unFocus(),
    child: AlertDialogConfirmation(confirmationText: getAlertDialogConfirmationMessage(),),
  ));
}
