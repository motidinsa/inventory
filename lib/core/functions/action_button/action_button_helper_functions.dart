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
    } else if ([RouteName.customerDetail,RouteName.vendorDetail].contains(currentRoute)) {
      actionButtonText = deleteN;
    }
  } else {}

  return actionButtonText;
}

Color? getActionButtonTextColor() {
  String currentRoute = Get.currentRoute;
  Color? color;
  if ([RouteName.customerDetail,RouteName.vendorDetail].contains(currentRoute)) {
    color = Colors.white;
  }

  return color;
}
Color getActionButtonBackgroundColor() {
  String currentRoute = Get.currentRoute;
  if ([RouteName.customerDetail,RouteName.vendorDetail].contains(currentRoute)) {
    return Colors.red.shade400;
  }else if(currentRoute == RouteName.signUp){
    return Colors.green.shade300;
  }

  return Colors.green.shade100;
}
