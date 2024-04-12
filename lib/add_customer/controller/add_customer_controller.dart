import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/customer_model.dart';

import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/main.dart';

class AddCustomerController extends GetxController {
  AppController appController = Get.find();
  var customerDetail = CustomerModel(
    name: '',
  ).obs;

  static AddCustomerController get to => Get.find();
  @override
  void onInit() {
    appController.currentPages.add(addCustomerN);
    super.onInit();
  }

  onAddCustomerSaveButtonPressed() async {
    Isar isar = Get.find();
    DateTime now = DateTime.now();
    String customerId = generateDatabaseId(time: now);
    final dbCustomer = CustomerDatabaseModel(
      name: customerDetail.value.name,
      phone: customerDetail.value.phoneNumber,
      address: customerDetail.value.address,
      city: customerDetail.value.city,
      email: customerDetail.value.email,
      dateCreated: now,
      customerId: customerId,
    );

    await isar.writeTxn(() async {
      await isar.customerDatabaseModels.put(dbCustomer);
      // await isar.logProductDatabaseModels.put(logDbProduct);
    });
    Get.back();
  }
}
