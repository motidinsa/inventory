import 'package:inventory/customer_list/controller/customer_list_controller.dart';

import 'package:inventory/customer_list/repository/customer_list_repository.dart';


onCustomerListTextFieldChange({
  required String data,
}) {
  CustomerListController customerListController = CustomerListController.to;
  customerListController.searchedText= data;
  customerListController.customerList = CustomerListRepository.searchCustomer(data: data);
  customerListController.update();
}