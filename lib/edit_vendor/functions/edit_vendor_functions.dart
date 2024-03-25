import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';

import 'package:my_inventory/edit_vendor/controller/edit_vendor_controller.dart';

String? getEditVendorData({required String title}) {
  EditVendorController editVendorController = Get.find();
  if (title == vendorNameN) {
    return editVendorController.vendorInfo.value.name;
  } else if (title == phoneNumberN()) {
    return editVendorController.vendorInfo.value.phoneNumber;
  } else if (title == addressN()) {
    return editVendorController.vendorInfo.value.address;
  } else if (title == cityN()) {
    return editVendorController.vendorInfo.value.city;
  } else if (title == emailN()) {
    return editVendorController.vendorInfo.value.email;
  } else if (title == contactPersonN) {
    return editVendorController.vendorInfo.value.contactPerson;
  }
  return null;
}
onEditVendorFocusChange({
  required String title,
  required String data,
}) {
  final EditVendorController editVendorController = Get.find();
  editVendorController.vendorInfo.update((vendor) {
    if (title == vendorNameN) {
      vendor?.name = data;
    } else if (title == phoneNumberN()) {
      vendor?.phoneNumber = data;
    } else if (title == contactPersonN) {
      vendor?.contactPerson = data;
    } else if (title == addressN()) {
      vendor?.address = data;
    } else if (title == cityN()) {
      vendor?.city = data;
    } else if (title == emailN()) {
      vendor?.email = data;
    }
  });
}