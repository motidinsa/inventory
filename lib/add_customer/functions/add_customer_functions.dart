import 'package:get/get.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
import 'package:my_inventory/add_customer/repository/add_customer_repository.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';
import 'package:my_inventory/customer_list/repository/customer_list_repository.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

onAddCustomerFocusChange({
  required String title,
  required String data,
}) {
  final AddCustomerController addCustomerController = Get.find();
  if (title == customerNameN) {
    addCustomerController.customerDetail.name = data;
  } else if (title == phoneNumberN) {
    addCustomerController.customerDetail.phoneNumber = data;
  } else if (title == addressN) {
    addCustomerController.customerDetail.address = data;
  } else if (title == cityN) {
    addCustomerController.customerDetail.city = data;
  } else if (title == emailN) {
    addCustomerController.customerDetail.email = data;
  }
}

onAddCustomerSaveButtonPressed() async {
  AddCustomerController addCustomerController = AddCustomerController.to;
  addCustomerController.isLoading = true;
  addCustomerController.update();
  await AddCustomerRepository.addCustomer();
  if (Get.previousRoute == RouteName.customerList) {
    CustomerListController customerListController = Get.find();
    customerListController.customerList =
        CustomerListRepository.getAllCustomers();
    customerListController.isEmpty = false;
    customerListController.update();
  }
  addCustomerController.isLoading = false;
  addCustomerController.update();
  Get.back();
  showSnackbar(message: successfullyAddedCustomerN);
}
