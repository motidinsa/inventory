import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/helper_functions.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/customer_detail/repository/customer_detail_repository.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';
import 'package:my_inventory/customer_list/repository/customer_list_repository.dart';

import '../../vendor_list/controller/vendor_list_controller.dart';
import '../../vendor_list/repository/vendor_list_repository.dart';
import '../repository/vendor_detail_repository.dart';

deleteVendor() async {
  try {
    VendorListController vendorListController = VendorListController.to;
    await VendorDetailRepository.deleteVendor();
    vendorListController.vendorList = Get.find<Isar>()
        .vendorDatabaseModels
        .filter()
        .nameContains(VendorListController.to.searchedText)
        .findAllSync();
    if(VendorListRepository.getAllVendors().isEmpty){
      vendorListController.isEmpty = true;
    }
    vendorListController.update();
    showSnackbar(message: successfullyDeletedN);
    Get.back();
  } on Exception {
    showSnackbar(
        message: someErrorOccurredN, backgroundColor: Colors.red.shade400);
  } finally {
    Get.back();
  }
}
