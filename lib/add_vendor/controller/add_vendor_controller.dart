import 'package:get/get.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/customer_model.dart';

import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/main.dart';

import '../../core/model/vendor/vendor_database_model.dart';
import '../../core/model/vendor/vendor_model.dart';

class AddVendorController extends GetxController {
  AppController appController = Get.find();
  var vendorDetail = VendorModel(
    name: '',
  ).obs;

  static AddVendorController get to => Get.find();
  @override
  void onInit() {
    appController.currentPages.add(addVendorN);
    super.onInit();
  }

  onAddVendorSaveButtonPressed() async {
    DateTime now = DateTime.now();
    String customerId = generateDatabaseId(time: now);
    final dbVendor = VendorDatabaseModel(
      name: vendorDetail.value.name,
      phone: vendorDetail.value.phoneNumber,
      address: vendorDetail.value.address,
      city: vendorDetail.value.city,
      email: vendorDetail.value.email,
      dateCreated: now,
      vendorId: customerId,
      contactPerson: vendorDetail.value.contactPerson,
    );

    await isar.writeTxn(() async {
      await isar.vendorDatabaseModels.put(dbVendor);
      // await isar.logProductDatabaseModels.put(logDbProduct);
    });
    Get.back();
  }
}
