import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

unFocus() => FocusManager.instance.primaryFocus?.unfocus();

bool isNumeric(String input) {
  final numberRegExp = RegExp(r'^[-+]?[0-9]+(\.[0-9]+)?$');
  return numberRegExp.hasMatch(input);
}

generateDatabaseId({required DateTime time, var identifier}) {
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

getFormattedNumberWithComa(double num) {
  return NumberFormat("#,###.##").format(num);
}

getFormattedNumberWithoutComa(num) {
  if (isNumeric(num.toString())) {
    return NumberFormat("###.##").format(double.parse(num.toString()));
  }
  return num.toString();
}

emptyIfNull(String? data) {
  if (data != null) {
    return data;
  }
  return '';
}

emptyIfDefaultValue(var data) {
  var emptyLists = [0, '0.0', '0'];
  if (!emptyLists.contains(data)) {
    return data.toString();
  }
  return '';
}

nullIfEmpty(String? data) {
  if (data != null) {
    if (data.isEmpty) {
      return null;
    }
  }
  return data;
}

showSnackbar({required String message, Color? color}) {
  Get.closeCurrentSnackbar();
  Get.showSnackbar(
    GetSnackBar(
      messageText: Text(
        message,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
      ),
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      borderRadius: 12,
      backgroundColor: color ?? Colors.green.shade400,
    ),
  );
}
