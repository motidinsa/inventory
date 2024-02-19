import 'package:get/get.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_model.dart';

class AddVendorController extends GetxController {
  AppController appController = Get.find();
  var vendorDetail = VendorModel(
    name: '',
    phoneNumber: '',
    address: '',
    city: '',
    email: '',
    contactPerson: '',
  ).obs;

  addCustomerToDB() async {
    final newUser = VendorDatabaseModel()
      ..name = vendorDetail.value.name
      ..phone = vendorDetail.value.phoneNumber
      ..address = vendorDetail.value.address
      ..city = vendorDetail.value.city
      ..email = vendorDetail.value.email
      ..contactPerson = vendorDetail.value.contactPerson;

    await appController.isar.writeTxn(() async {
      await appController.isar.vendorDatabaseModels.put(newUser); // insert & update
    });
  }
}
