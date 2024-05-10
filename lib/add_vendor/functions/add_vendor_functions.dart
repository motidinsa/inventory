import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/core/functions/helper_functions.dart';

import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/vendor_list/controller/vendor_list_controller.dart';
import 'package:my_inventory/vendor_list/repository/vendor_list_repository.dart';
import 'package:my_inventory/add_vendor/controller/add_vendor_controller.dart';
import 'package:my_inventory/add_vendor/repository/add_vendor_repository.dart';

onAddVendorTextFieldChange({
  required String title,
  required String data,
}) {
  final AddVendorController addVendorController = AddVendorController.to;
  if (title == vendorNameN) {
    addVendorController.vendorModel.name = data;
  } else if (title == phoneNumberN) {
    addVendorController.vendorModel.phoneNumber = data;
  }else if (title == contactPersonN) {
    addVendorController.vendorModel.contactPerson = data;
  } else if (title == addressN) {
    addVendorController.vendorModel.address = data;
  } else if (title == cityN) {
    addVendorController.vendorModel.city = data;
  } else if (title == emailN) {
    addVendorController.vendorModel.email = data;
  }
}

onAddVendorSaveButtonPressed() async {
  if (AppController.to.formKey.currentState!.validate()) {
    final AddVendorController addVendorController = AddVendorController.to;
    addVendorController.isLoading = true;
    addVendorController.update();
    try {
      await AddVendorRepository.addVendor();
      if (Get.previousRoute == RouteName.vendorList) {
        VendorListController vendorListController = VendorListController.to;
        vendorListController.vendorList =
            VendorListRepository.getAllVendors();
        vendorListController.isEmpty = false;
        vendorListController.update();
      }
      showSnackbar(message: successfullyAddedVendorN);
      Get.back();

    } on Exception {
      showSnackbar(message: someErrorOccurredN);
    } finally {
      addVendorController.isLoading = false;
      addVendorController.update();
    }
  }
}
