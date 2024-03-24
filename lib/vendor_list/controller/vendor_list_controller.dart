import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/main.dart';

import '../../core/model/vendor/vendor_database_model.dart';

class VendorListController extends GetxController {
  var searchedText = ''.obs;
  RxList<VendorDatabaseModel> vendorList = <VendorDatabaseModel>[].obs;
  int? selectedId;

  static VendorListController get to => Get.find();
  @override
  void onInit() {
    vendorList(isar.vendorDatabaseModels.where().findAllSync());
    AppController.to.currentPages.add(vendorListN);
    super.onInit();
  }
}
