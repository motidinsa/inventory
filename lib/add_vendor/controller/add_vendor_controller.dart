import 'package:get/get.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_model.dart';
import 'package:my_inventory/main.dart';

class AddVendorController extends GetxController {
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

    await isar.writeTxn(() async {
      await isar.vendorDatabaseModels.put(newUser);
    });
  }
}
