import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/routes/route_names.dart';

String getActionButtonText({String? redirectFrom}) {
  String currentRoute = Get.currentRoute;
  String actionButtonText = saveN;
  if (redirectFrom == null) {
    if (currentRoute == RouteName.signUp) {
      actionButtonText = signUpN;
    }
  } else {}

  return actionButtonText;
}

Color? getActionButtonTextColor() {
  String currentRoute = Get.currentRoute;
  Color? color;
  if (currentRoute == RouteName.customerDetail) {
    color = Colors.white;
  }

  return color;
}
