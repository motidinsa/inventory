import 'package:get/get.dart';

import 'package:my_inventory/core/model/vendor/vendor_model.dart';

class AddVendorController extends GetxController {
  bool isLoading = false;
  bool isSaveButtonPressed = false;
  VendorModel vendorModel = VendorModel(
    name: '',
  );

  static AddVendorController get to => Get.find();
}
