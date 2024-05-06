import 'package:get/get.dart';
import 'package:my_inventory/core/model/customer/customer_model.dart';

class AddCustomerController extends GetxController {
  bool isLoading = false;
  CustomerModel customerModel = CustomerModel(
    name: '',
  );

  static AddCustomerController get to => Get.find();
}
