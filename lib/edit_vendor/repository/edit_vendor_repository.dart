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
      vendorDatabaseModel.name = vendorModel.name;
      vendorDatabaseModel.phoneNumber =
          nullIfEmpty(vendorModel.phoneNumber);  vendorDatabaseModel.contactPerson =
          nullIfEmpty(vendorModel.contactPerson);
      vendorDatabaseModel.address = nullIfEmpty(vendorModel.address);
      vendorDatabaseModel.city = nullIfEmpty(vendorModel.city);
      vendorDatabaseModel.email = nullIfEmpty(vendorModel.email);
      vendorDatabaseModel.lastModifiedByUserId =
          AppController.to.userId.value;
      vendorDatabaseModel.lastModifiedDate = now;
      await _isar.vendorDatabaseModels.put(vendorDatabaseModel);
      await _isar.logVendorDatabaseModels.put(
        LogVendorDatabaseModel(
          name: vendorDatabaseModel.name,
          phoneNumber: nullIfEmpty(vendorDatabaseModel.phoneNumber),
          contactPerson: nullIfEmpty(vendorDatabaseModel.contactPerson),
          address: nullIfEmpty(vendorDatabaseModel.address),
          city: nullIfEmpty(vendorDatabaseModel.city),
          email: nullIfEmpty(vendorDatabaseModel.email),
          dateCreated: now,
          vendorId: vendorDatabaseModel.vendorId,
          addedByUserId: vendorDatabaseModel.addedByUserId,
          lastModifiedByUserId: AppController.to.userId.value,
          lastModifiedDate: now,
          objectId: objectId,
        ),
      );
    });
  }
}
