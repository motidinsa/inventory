import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';

import 'package:my_inventory/add_vendor/controller/add_vendor_controller.dart';

onAddVendorFocusChange({
  required String title,
  required String data,
}) {
  final AddVendorController addVendorController = Get.find();
  addVendorController.vendorDetail.update((vendor) {
    if (title == vendorNameN) {
      vendor?.name = data;
    } else if (title == phoneNumberN) {
      vendor?.phoneNumber = data;
    } else if (title == contactPersonN) {
      vendor?.contactPerson = data;
    }else if (title == addressN) {
      vendor?.address = data;
    } else if (title == cityN) {
      vendor?.city = data;
    } else if (title == emailN) {
      vendor?.email = data;
    }
  });
}
