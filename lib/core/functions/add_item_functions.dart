import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/add_item_controller.dart';

import '../../add_product/controller/add_product_controller.dart';
import '../repository/add_item_repository.dart';
import '../routes/route_names.dart';
import 'helper_functions.dart';

onCategoryAddPressed() async {
  try {
    await AddItemRepository.addCategory();
    AddProductController.to.categoryListFoundResult =
        AddItemRepository.getAllCategory();
    AddProductController.to.update();
  } on Exception {
    showSnackbar(
      message: someErrorOccurredN,
      backgroundColor: Colors.red.shade400,
    );
  }
}onUnitOfMeasurementAddPressed() async {
  try {
    await AddItemRepository.addCategory();
    AddProductController.to.categoryListFoundResult =
        AddItemRepository.getAllCategory();
    AddProductController.to.update();
  } on Exception {
    showSnackbar(
      message: someErrorOccurredN,
      backgroundColor: Colors.red.shade400,
    );
  }
}
