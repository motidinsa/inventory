import 'package:get/get.dart';
import 'package:inventory/add_customer/controller/add_customer_controller.dart';
import 'package:inventory/add_customer/repository/add_customer_repository.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/routes/route_names.dart';
import 'package:inventory/customer_list/controller/customer_list_controller.dart';
import 'package:inventory/customer_list/repository/customer_list_repository.dart';
import 'package:inventory/core/functions/helper_functions.dart';

import 'package:inventory/core/controller/app_controller.dart';

onAddCustomerTextFieldChange({
  required String title,
  required String data,
}) {
  final AddCustomerController addCustomerController = AddCustomerController.to;
  if (title == customerNameN) {
    addCustomerController.customerModel.name = data;
  } else if (title == phoneNumberN) {
    addCustomerController.customerModel.phoneNumber = data;
  } else if (title == addressN) {
    addCustomerController.customerModel.address = data;
  } else if (title == cityN) {
    addCustomerController.customerModel.city = data;
  } else if (title == emailN) {
    addCustomerController.customerModel.email = data;
  }
}

onAddCustomerSaveButtonPressed() async {
  AddCustomerController addCustomerController = AddCustomerController.to;
  addCustomerController.isSaveButtonPressed = true;

  if (AppController.to.formKey.currentState!.validate()) {
    addCustomerController.update();
    addCustomerController.isLoading = true;

    try {
      await AddCustomerRepository.addCustomer();
      if (Get.previousRoute == RouteName.customerList) {
        CustomerListController customerListController =
            CustomerListController.to;
        customerListController.customerList =
            CustomerListRepository.getAllCustomers();
        customerListController.isEmpty = false;
        customerListController.update();
      }
      showSnackbar(message: successfullyAddedCustomerN, success: true);
      Get.back();
    } on Exception {
      showSnackbar(message: someErrorOccurredN, success: false);
    } finally {
      addCustomerController.isLoading = false;
      addCustomerController.update();
    }
  }
}
