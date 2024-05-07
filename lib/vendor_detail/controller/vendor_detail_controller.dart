import 'package:get/get.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';

import '../../core/model/vendor/vendor_database_model.dart';

class VendorDetailController extends GetxController {
  late VendorDatabaseModel vendorDatabaseModel;

  static VendorDetailController get to => Get.find();

  @override
  void onInit() {
    vendorDatabaseModel = Get.arguments;
    super.onInit();
  }
}
