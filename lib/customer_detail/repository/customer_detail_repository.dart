import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/customer/log_deleted_customer_database_model.dart';

import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';

class CustomerDetailRepository {
  static final Isar _isar = Get.find();

  static deleteCustomer() async {
    await _isar.writeTxn(() async {
      CustomerDatabaseModel customerDatabaseModel =
          CustomerDetailController.to.customerDatabaseModel;
      await _isar.logDeletedCustomerDatabaseModels
          .put(LogDeletedCustomerDatabaseModel(
        customerId: customerDatabaseModel.customerId,
        companyId: customerDatabaseModel.companyId,
        deletedByUserId: AppController.to.userId,
        deletedDate: DateTime.now(),
      ));

      await _isar.customerDatabaseModels
          .delete(CustomerDetailController.to.customerDatabaseModel.id);
    });
  }

  static getCustomerCredit() async {
    // CustomerDatabaseModel customerDatabaseModel =
    //     Get.arguments[0] as CustomerDatabaseModel;
    // salesPaymentDatabaseModels = isar.salesPaymentDatabaseModels.where()
    //     .filter()
    //     .customerIdEqualTo(customerDatabaseModel.customerId)
    //     .findAllSync();
    await _isar.writeTxn(() async {
      await _isar.customerDatabaseModels
          .delete(CustomerDetailController.to.customerDatabaseModel.id);
    });
  }
}
