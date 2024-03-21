import 'package:get/get.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/customer_model.dart';

import '../../core/constants/name_constants.dart';
import '../../core/model/customer/customer_database_model.dart';
import '../../main.dart';

class AddCustomerController extends GetxController {
  AppController appController = Get.find();
  var customerDetail = CustomerModel(
    name: '',
  ).obs;

  @override
  void onInit() {
    appController.currentPages.add(addCustomerN());
    super.onInit();
  }

  onAddCustomerSaveButtonPressed() async {
    // isLocalSaveLoading(true);
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
    // isLocalSaveLoading(false);
    Get.back();
  }
}
