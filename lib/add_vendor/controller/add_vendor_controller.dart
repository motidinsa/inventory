import 'package:get/get.dart';
import 'package:my_inventory/core/model/customer/customer_model.dart';

import '../../core/model/vendor/vendor_model.dart';

class AddVendorController extends GetxController {
  bool isLoading = false;
  VendorModel vendorModel = VendorModel(
    name: '',
  );

  static AddVendorController get to => Get.find();
}
