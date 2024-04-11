import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/main.dart';

import 'package:my_inventory/vendor_list/controller/vendor_list_controller.dart';

onVendorListTextFieldChange({
  required String data,
}) {
  VendorListController vendorListController = Get.find();
  vendorListController.searchedText(data);final Isar isar = Get.find();
  vendorListController.vendorList(isar.vendorDatabaseModels
      .filter()
      .nameContains(data, caseSensitive: false)
      .findAllSync());
}
