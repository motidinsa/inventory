import 'package:get/get.dart';

import 'package:inventory/core/model/vendor/vendor_model.dart';

class AddVendorController extends GetxController {
  bool isLoading = false;
  bool isSaveButtonPressed = false;
  VendorModel vendorModel = VendorModel(
    name: '',
  );

  static AddVendorController get to => Get.find();
}
