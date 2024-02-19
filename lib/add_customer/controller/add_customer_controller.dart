import 'package:get/get.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/customer/customer_model.dart';

import '../../main.dart';

class AddCustomerController extends GetxController {
  AppController appController = Get.find();
  var customerDetailList = CustomerModel(
    name: '',
    phoneNumber: '',
    address: '',
    city: '',
    email: '',
  ).obs;

  addCustomerToDB() async {
    final newUser = CustomerDatabaseModel()
      ..name = customerDetailList.value.name
      ..phone = customerDetailList.value.phoneNumber
      ..address = customerDetailList.value.address
      ..city = customerDetailList.value.city
      ..email = customerDetailList.value.email;

    await isar.writeTxn(() async {
      await isar.customerDatabaseModels.put(newUser); // insert & update
    });
  }
}
