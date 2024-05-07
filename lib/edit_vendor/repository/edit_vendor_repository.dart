import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';

import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/log_customer_database_model.dart';
import 'package:my_inventory/core/model/vendor/log_vendor_database_model.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:my_inventory/edit_customer/controller/edit_customer_controller.dart';

import 'package:my_inventory/core/model/customer/customer_model.dart';

import '../../core/model/vendor/vendor_database_model.dart';
import '../../core/model/vendor/vendor_model.dart';
import '../../vendor_detail/controller/vendor_detail_controller.dart';
import '../controller/edit_vendor_controller.dart';

class EditVendorRepository {
  static final Isar _isar = Get.find();

  static editVendor() async {
    VendorDatabaseModel vendorDatabaseModel =
        VendorDetailController.to.vendorDatabaseModel;
    VendorModel vendorModel = EditVendorController.to.vendorModel;
    DateTime now = DateTime.now();
    String objectId = generateDatabaseId(time: now);

    await _isar.writeTxn(() async {
      String name = vendorModel.name.trim();
      String? phoneNumber = nullIfEmpty(vendorModel.phoneNumber?.trim());
      String? contactPerson = nullIfEmpty(vendorModel.contactPerson?.trim());
      String? address = nullIfEmpty(vendorModel.address?.trim());
      String? city = nullIfEmpty(vendorModel.city?.trim());
      String? email = nullIfEmpty(vendorModel.email?.trim());
      String lastModifiedByUserId = AppController.to.userId.value;
      String companyId = AppController.to.companyId;

      vendorDatabaseModel.name = name;
      vendorDatabaseModel.phoneNumber = phoneNumber;
      vendorDatabaseModel.contactPerson = contactPerson;
      vendorDatabaseModel.address = address;
      vendorDatabaseModel.city = city;
      vendorDatabaseModel.email = email;
      vendorDatabaseModel.lastModifiedByUserId = lastModifiedByUserId;
      vendorDatabaseModel.lastModifiedDate = now;

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
          vendorId: vendorDatabaseModel.vendorId,
          addedByUserId: vendorDatabaseModel.addedByUserId,
          companyId: companyId,
          lastModifiedByUserId: lastModifiedByUserId,
          lastModifiedDate: now,
          objectId: objectId,
        ),
      );
    });
  }
}
