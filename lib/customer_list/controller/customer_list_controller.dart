import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/customer_list/repository/customer_list_repository.dart';

class CustomerListController extends GetxController {
  var searchedText = ''.obs;
  RxList<CustomerDatabaseModel> customerList = <CustomerDatabaseModel>[].obs;

  static CustomerListController get to => Get.find();

  @override
  void onInit() {
    customerList(CustomerListRepository.getAllCustomers());
    super.onInit();
  }
}
