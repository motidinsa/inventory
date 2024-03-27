import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/functions/core_functions.dart';

appBar({required String pageName, required BuildContext context}) {
  return AppBar(
    title: Text(
      pageName,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: const Color(0xff006E1C).withOpacity(.9),
      ),
    ),
    centerTitle: true,
    elevation: 3,
    shadowColor: Colors.grey,
    backgroundColor: const Color(0xffDCEEDE),
    leading: IconButton(
      onPressed: () => Get.back(),
      icon: Icon(
        Icons.close,
        color: Colors.grey.shade800,
      ),
    ),
  );
}

addIconButton() {
  return Center(
    child: IconButton(
      onPressed: () => onAddIconPressed(),
      icon: const Icon(
        Icons.add,
        color: Colors.green,
        size: 27,
      ),
    ),
  );
}
