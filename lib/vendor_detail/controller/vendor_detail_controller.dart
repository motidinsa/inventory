import 'package:get/get.dart';


import 'package:inventory/core/model/vendor/vendor_database_model.dart';

class VendorDetailController extends GetxController {
  late VendorDatabaseModel vendorDatabaseModel;

  static VendorDetailController get to => Get.find();

  @override
  void onInit() {
    vendorDatabaseModel = Get.arguments;
    super.onInit();
  }
}
