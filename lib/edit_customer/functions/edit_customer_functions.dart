import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
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
  final EditCustomerController editCustomerController = EditCustomerController.to;
  if (title == customerNameN) {
    editCustomerController.customerDatabaseModel.name = data;
  } else if (title == phoneNumberN) {
    editCustomerController.customerDatabaseModel.phone = nullIfEmpty(data);
  } else if (title == addressN) {
    editCustomerController.customerDatabaseModel.address = nullIfEmpty(data);
  } else if (title == cityN) {
    editCustomerController.customerDatabaseModel.city = nullIfEmpty(data);
  } else if (title == emailN) {
    editCustomerController.customerDatabaseModel.email = nullIfEmpty(data);
  }
}

String? getEditCustomerData({required String title}) {
  EditCustomerController editCustomerController = EditCustomerController.to;
  String? data;
  if (title == customerNameN) {
    data = editCustomerController.customerDatabaseModel.name;
  } else if (title == phoneNumberN) {
    data = editCustomerController.customerDatabaseModel.phone;
  } else if (title == addressN) {
    data = editCustomerController.customerDatabaseModel.address;
  } else if (title == cityN) {
    data = editCustomerController.customerDatabaseModel.city;
  } else if (title == emailN) {
    data = editCustomerController.customerDatabaseModel.email;
  }
  return data;
}

onEditCustomerSaveButtonPressed() async {
  EditCustomerController editCustomerController = EditCustomerController.to;
  // unFocus();
  editCustomerController.isLoading = true;
  editCustomerController.update();
  try {
    await EditCustomerRepository.editCustomer();
      CustomerListController customerListController = CustomerListController.to;
      customerListController.customerList =
          CustomerListRepository.searchCustomer(data: customerListController.searchedText);
      // customerListController.isEmpty = false;
      customerListController.update();
      CustomerDetailController.to.update();

    showSnackbar(message: successfullyEditedN);
    Get.back();

  } on Exception {
    showSnackbar(message: someErrorOccurredN);
  } finally {
    editCustomerController.isLoading = false;
    editCustomerController.update();
  }

  // Get.back();
  // Get.back();
}
