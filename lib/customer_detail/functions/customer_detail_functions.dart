import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/helper_functions.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/customer_detail/repository/customer_detail_repository.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';
import 'package:my_inventory/customer_list/repository/customer_list_repository.dart';

deleteCustomer() async {
  try {
    CustomerListController customerListController = CustomerListController.to;
    await CustomerDetailRepository.deleteCustomer();
    customerListController.customerList = Get.find<Isar>()
        .customerDatabaseModels
        .filter()
        .nameContains(CustomerListController.to.searchedText)
        .findAllSync();
    if(CustomerListRepository.getAllCustomers().isEmpty){
      customerListController.isEmpty = true;
    }
      customerListController.update();
    showSnackbar(message: successfullyDeletedN);
    Get.back();
  } on Exception {
    showSnackbar(
        message: someErrorOccurredN, backgroundColor: Colors.red.shade400);
  } finally {
    Get.back();
  }
}
