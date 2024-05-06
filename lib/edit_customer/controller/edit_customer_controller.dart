import 'package:get/get.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';

import '../../core/model/customer/customer_model.dart';

class EditCustomerController extends GetxController {
   late CustomerModel customerModel;

   var isLoading = false;

  static EditCustomerController get to => Get.find();

  @override
  void onInit() {
    CustomerDatabaseModel customerDatabaseModel =
        CustomerDetailController.to.customerDatabaseModel;
    customerModel = CustomerModel(
      name: customerDatabaseModel.name,
      phoneNumber: customerDatabaseModel.phoneNumber,
      address: customerDatabaseModel.address,
      city: customerDatabaseModel.city,
      email: customerDatabaseModel.email,
    );
    super.onInit();
  }
}
