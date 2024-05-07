import 'package:get/get.dart';
import 'package:isar/isar.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/vendor/log_deleted_vendor_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';

import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';

import '../../core/controller/app_controller.dart';
import '../controller/vendor_detail_controller.dart';

class VendorDetailRepository {
  static final Isar _isar = Get.find();

  static deleteVendor() async {
    await _isar.writeTxn(() async {
      VendorDatabaseModel vendorDatabaseModel =
          VendorDetailController.to.vendorDatabaseModel;
      await _isar.logDeletedVendorDatabaseModels
          .put(LogDeletedVendorDatabaseModel(
        vendorId: vendorDatabaseModel.vendorId,
        companyId: vendorDatabaseModel.companyId,
        deletedByUserId: AppController.to.userId.value,
        deletedDate: DateTime.now(),
      ));

      await _isar.vendorDatabaseModels
          .delete(VendorDetailController.to.vendorDatabaseModel.id);
    });
  }
}
