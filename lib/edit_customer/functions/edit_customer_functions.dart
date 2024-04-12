import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/edit_customer/controller/edit_customer_controller.dart';

onEditCustomerFocusChange({
  required String title,
  required String data,
}) {
  final EditCustomerController editCustomerController = Get.find();
  editCustomerController.customerInfo.update((customer) {
    if (title == customerNameN) {
      customer?.name = data;
    } else if (title == phoneNumberN) {
      customer?.phoneNumber = data;
    } else if (title == addressN) {
      customer?.address = data;
    } else if (title == cityN) {
      customer?.city = data;
    } else if (title == emailN) {
      customer?.email = data;
    }
  });
}

String? getEditCustomerData({required String title}) {
  EditCustomerController editCustomerController = Get.find();
  if (title == customerNameN) {
    return editCustomerController.customerInfo.value.name;
  } else if (title == phoneNumberN) {
    return editCustomerController.customerInfo.value.phoneNumber;
  } else if (title == addressN) {
    return editCustomerController.customerInfo.value.address;
  } else if (title == cityN) {
    return editCustomerController.customerInfo.value.city;
  } else if (title == emailN) {
    return editCustomerController.customerInfo.value.email;
  }
  return null;
}
