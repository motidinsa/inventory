import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';
import 'package:my_inventory/user.dart';

import '../repository/customer_list_repository.dart';


onCustomerListTextFieldChange({
  required String data,
}) {
  CustomerListController customerListController = Get.find();
  customerListController.searchedText(data);
  customerListController.customerList(CustomerListRepository.searchCustomer(data: data));
}