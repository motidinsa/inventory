import 'package:get/get.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';

onAddCustomerFocusChange({
  required String title,
  required String data,
}) {
  final AddCustomerController addCustomerController = Get.find();
  addCustomerController.customerDetail.update((customer) {
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
