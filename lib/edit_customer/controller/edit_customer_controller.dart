import 'package:get/get.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';

class EditCustomerController extends GetxController {
  late  CustomerDatabaseModel customerDatabaseModel;
  EditCustomerController({required this.customerDatabaseModel});
  var isLoading = false;

  static EditCustomerController get to => Get.find();
  @override
  void onInit() {
    customerDatabaseModel = CustomerDetailController.to.customerDatabaseModel;
    super.onInit();
  }
}
