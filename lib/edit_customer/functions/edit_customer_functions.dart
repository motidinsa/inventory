import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/customer/customer_model.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:my_inventory/edit_customer/controller/edit_customer_controller.dart';

import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/functions/helper_functions.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';
import 'package:my_inventory/customer_list/repository/customer_list_repository.dart';
import 'package:my_inventory/edit_customer/repository/edit_customer_repository.dart';

onEditCustomerTextFieldChange({
  required String title,
  required String data,
}) {
  final CustomerModel customerModel = EditCustomerController.to.customerModel;
  if (title == customerNameN) {
    customerModel.name = data;
  } else if (title == phoneNumberN) {
    customerModel.phoneNumber = nullIfEmpty(data);
  } else if (title == addressN) {
    customerModel.address = nullIfEmpty(data);
  } else if (title == cityN) {
    customerModel.city = nullIfEmpty(data);
  } else if (title == emailN) {
    customerModel.email = nullIfEmpty(data);
  }
}

String? getEditCustomerData({required String title}) {
  CustomerDatabaseModel customerDatabaseModel =
      CustomerDetailController.to.customerDatabaseModel;
  String? data;
  if (title == customerNameN) {
    data = customerDatabaseModel.name;
  } else if (title == phoneNumberN) {
    data = customerDatabaseModel.phoneNumber;
  } else if (title == addressN) {
    data = customerDatabaseModel.address;
  } else if (title == cityN) {
    data = customerDatabaseModel.city;
  } else if (title == emailN) {
    data = customerDatabaseModel.email;
  }
  return data;
}

onEditCustomerSaveButtonPressed() async {
  EditCustomerController editCustomerController = EditCustomerController.to;
  editCustomerController.isLoading = true;
  editCustomerController.update();
  try {
    if (isCustomerEdited()) {
      await EditCustomerRepository.editCustomer();
      CustomerListController customerListController = CustomerListController.to;
      customerListController.customerList =
          CustomerListRepository.searchCustomer(
              data: customerListController.searchedText);
      customerListController.update();
      CustomerDetailController.to.update();

      showSnackbar(message: successfullyEditedN);
    } else {
      showSnackbar(
          message: noChangesMadeN, backgroundColor: Colors.grey.shade800);
    }
    Get.back();
  } on Exception {
    showSnackbar(message: someErrorOccurredN);
  } finally {
    editCustomerController.isLoading = false;
    editCustomerController.update();
  }
}

bool isCustomerEdited() {
  CustomerDatabaseModel customerDatabaseModel =
      CustomerDetailController.to.customerDatabaseModel;
  CustomerModel customerModel = EditCustomerController.to.customerModel;
  return customerDatabaseModel.name !=
          customerModel.name.trim() ||
      customerDatabaseModel.phoneNumber !=
          nullIfEmpty(customerModel.phoneNumber?.trim()) ||
      customerDatabaseModel.address !=
          nullIfEmpty(customerModel.address?.trim()) ||
      customerDatabaseModel.city !=
          nullIfEmpty(customerModel.city?.trim()) ||
      customerDatabaseModel.email !=
          nullIfEmpty(customerModel.email?.trim());
}
