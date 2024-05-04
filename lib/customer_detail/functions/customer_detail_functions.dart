import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/helper_functions.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:my_inventory/customer_detail/repository/customer_detail_repository.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';

deleteCustomer() async {
  try {
    await CustomerDetailRepository.deleteCustomer();
    CustomerListController.to.customerList = Get.find<Isar>()
        .customerDatabaseModels
        .filter()
        .nameContains(CustomerListController.to.searchedText.value)
        .findAllSync();
    CustomerListController.to.update();
    showSnackbar(message: successfullyDeletedN);
    Get.back();
  } on Exception {
    showSnackbar(
        message: someErrorOccurredN, backgroundColor: Colors.red.shade400);
  } finally {
    Get.back();
  }
}
// double getCustomerCredit(){
//
// }
