import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';

import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/customer_model.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
import 'package:my_inventory/core/model/customer/log_customer_database_model.dart';

import '../../core/model/vendor/log_vendor_database_model.dart';
import '../../core/model/vendor/vendor_database_model.dart';
import '../../core/model/vendor/vendor_model.dart';
import '../controller/add_vendor_controller.dart';

class AddVendorRepository {
  static final Isar _isar = Get.find();

  static addVendor() async {
    VendorModel vendorModel = AddVendorController.to.vendorModel;
    DateTime now = DateTime.now();
    String vendorId = generateDatabaseId(time: now);
    final VendorDatabaseModel vendorDatabaseModel = VendorDatabaseModel(
      name: vendorModel.name.trim(),
      phoneNumber: nullIfEmpty(vendorModel.phoneNumber?.trim()),
      contactPerson: nullIfEmpty(vendorModel.contactPerson?.trim()),
      address: nullIfEmpty(vendorModel.address?.trim()),
      city: nullIfEmpty(vendorModel.city?.trim()),
      email: nullIfEmpty(vendorModel.email?.trim()),
      dateCreated: now,
      vendorId: vendorId,
      addedByUserId: AppController.to.userId.value,
    );
    await _isar.writeTxn(() async {
      await _isar.vendorDatabaseModels.put(vendorDatabaseModel);
      await _isar.logVendorDatabaseModels.put(
        LogVendorDatabaseModel(
            name: vendorModel.name.trim(),
            phoneNumber: nullIfEmpty(vendorModel.phoneNumber?.trim()),
            contactPerson: nullIfEmpty(vendorModel.contactPerson?.trim()),
            address: nullIfEmpty(vendorModel.address?.trim()),
            city: nullIfEmpty(vendorModel.city?.trim()),
            email: nullIfEmpty(vendorModel.email?.trim()),
            dateCreated: now,
            vendorId: vendorId,
            addedByUserId: AppController.to.userId.value,
            objectId: vendorId),
      );
    });
  }
}
