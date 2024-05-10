import 'package:get/get.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/customer_list/repository/customer_list_repository.dart';

class CustomerListController extends GetxController {
  String searchedText = '';
  bool? isEmpty;
  List<CustomerDatabaseModel> customerList = [];

  static CustomerListController get to => Get.find();

  @override
  void onInit() {
    customerList = CustomerListRepository.getAllCustomers();
    if(customerList.isEmpty){
      isEmpty = true;
    }
    super.onInit();
  }
}
