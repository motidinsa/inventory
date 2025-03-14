import 'package:get/get.dart';
import 'package:inventory/core/model/customer/customer_model.dart';

class AddCustomerController extends GetxController {
  bool isLoading = false;
  bool isSaveButtonPressed = false;
  CustomerModel customerModel = CustomerModel(
    name: '',
  );

  static AddCustomerController get to => Get.find();
}
