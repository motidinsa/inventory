import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';

appBar({required String pageName}) {
  var pageNameToFunction = {
    addProductN: () => Get.delete<AddProductController>()
  };
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
      onPressed: () {
        pageNameToFunction[pageName];
        Get.back();
      },
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
