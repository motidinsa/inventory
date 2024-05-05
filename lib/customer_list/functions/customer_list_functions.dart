import 'package:get/get.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';

import 'package:my_inventory/customer_list/repository/customer_list_repository.dart';


onCustomerListTextFieldChange({
  required String data,
}) {
  CustomerListController customerListController = Get.find();
  customerListController.searchedText= data;
  customerListController.customerList = CustomerListRepository.searchCustomer(data: data);
  customerListController.update();
}