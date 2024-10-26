import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/helper_functions.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:my_inventory/customer_detail/repository/customer_detail_repository.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';
import 'package:my_inventory/customer_list/repository/customer_list_repository.dart';

deleteCustomer() async {
  try {
    CustomerListController customerListController = CustomerListController.to;
    await CustomerDetailRepository.deleteCustomer();
    customerListController.customerList = CustomerListRepository.searchCustomer(
        data: customerListController.searchedText);
    if (CustomerListRepository
        .getAllCustomers()
        .isEmpty) {
      customerListController.isEmpty = true;
    }
    customerListController.update();
    showSnackbar(message: successfullyDeletedN, success: true);
    Get.back();
  } on Exception {
    showSnackbar(message: someErrorOccurredN, success: false);
  } finally {
    Get.back();
  }
}

onCustomerDetailTextFieldChange({
  required String data,
  required String title,
}) {
  CustomerDetailController customerDetailController =
      CustomerDetailController.to;
  if (title == cashN) {
    customerDetailController.cashCreditPaid = data;
  } else if (title == transferN) {
    customerDetailController.transferCreditPaid = data;
  }
}

onPayCreditPressed() async {
  CustomerDetailController customerDetailController = CustomerDetailController
      .to;
  unFocus();
  customerDetailController.isLoading = true;
  customerDetailController.update();
  try {
    await CustomerDetailRepository.editCustomerCredit();
    customerDetailController.hasCreditPayHistory=true;
    Get.back();
  }on Exception{
    showSnackbar(message: errorPayingCustomerCreditN, success: false);

  }finally{
    customerDetailController.isLoading = false;
    customerDetailController.update();
  }
}