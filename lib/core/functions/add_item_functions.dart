import 'package:get/get.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/controller/add_item_controller.dart';

import 'package:inventory/add_product/controller/add_product_controller.dart';
import 'package:inventory/core/repository/add_item_repository.dart';
import 'package:inventory/core/functions/helper_functions.dart';

onCategoryAddPressed() async {
  if (AddItemController.to.formKey.currentState!.validate()) {
    try {
        await AddItemRepository.addCategory();
        AddProductController.to.categoryListFoundResult =
            AddItemRepository.getAllCategory();
        AddProductController.to.update();
        Get.back();
      } on Exception {
        showSnackbar(
          message: someErrorOccurredN,
          success: false,
        );
      }
  }
}onUnitOfMeasurementAddPressed() async {
  if (AddItemController.to.formKey.currentState!.validate()) {
    try {
        await AddItemRepository.addUnitOfMeasurement();
        AddProductController.to.unitOfMeasurementListFoundResult =
            AddItemRepository.getAllUnitOfMeasurement();
        AddProductController.to.update();
        Get.back();
      } on Exception {
        showSnackbar(
          message: someErrorOccurredN,
          success: false,
        );
      }
  }
}
