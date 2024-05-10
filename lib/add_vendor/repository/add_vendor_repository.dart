import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/controller/app_controller.dart';



import 'package:my_inventory/core/functions/helper_functions.dart';
import 'package:my_inventory/core/model/vendor/log_vendor_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_model.dart';
import 'package:my_inventory/add_vendor/controller/add_vendor_controller.dart';

class AddVendorRepository {
  static final Isar _isar = Get.find();

  static addVendor() async {
    VendorModel vendorModel = AddVendorController.to.vendorModel;
    AppController appController = AppController.to;
    DateTime now = DateTime.now();
    String vendorId = generateDatabaseId(time: now);
    String name = vendorModel.name.trim();
    String? phoneNumber = nullIfEmpty(vendorModel.phoneNumber?.trim());
    String? contactPerson = nullIfEmpty(vendorModel.contactPerson?.trim());
    String? address = nullIfEmpty(vendorModel.address?.trim());
    String? city = nullIfEmpty(vendorModel.city?.trim());
    String? email = nullIfEmpty(vendorModel.email?.trim());
    String addedByUserId = appController.userId.value;
    String companyId = appController.companyId;

    final VendorDatabaseModel vendorDatabaseModel = VendorDatabaseModel(
      name: name,
      phoneNumber: phoneNumber,
      contactPerson: contactPerson,
      address: address,
      city: city,
      email: email,
      dateCreated: now,
      vendorId: vendorId,
      addedByUserId: addedByUserId,
      companyId: companyId,
    );
    await _isar.writeTxn(() async {
      await _isar.vendorDatabaseModels.put(vendorDatabaseModel);
      await _isar.logVendorDatabaseModels.put(
        LogVendorDatabaseModel(
          name: name,
          phoneNumber: phoneNumber,
          contactPerson: contactPerson,
          address: address,
          city: city,
          email: email,
          dateCreated: now,
          vendorId: vendorId,
          addedByUserId: addedByUserId,
          companyId: companyId,
        ),
      );
    });
  }
}
