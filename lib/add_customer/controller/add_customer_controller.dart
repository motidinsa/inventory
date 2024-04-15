import 'package:get/get.dart';
import 'package:my_inventory/core/model/customer/customer_model.dart';

class AddCustomerController extends GetxController {
  bool isLoading = false;
  CustomerModel customerDetail = CustomerModel(
    name: '',
  );

  static AddCustomerController get to => Get.find();
}
