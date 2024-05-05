import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';

import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/log_customer_database_model.dart';
import 'package:my_inventory/edit_customer/controller/edit_customer_controller.dart';

class EditCustomerRepository {
  static final Isar _isar = Get.find();

  static editCustomer() async {
    EditCustomerController editCustomerController = EditCustomerController.to;
    DateTime now = DateTime.now();
    String objectId = generateDatabaseId(time: now);
    await _isar.writeTxn(() async {
      editCustomerController.customerDatabaseModel.lastModifiedByUserId =
          AppController.to.userId.value;
      editCustomerController.customerDatabaseModel.lastModifiedDate = now;
      await _isar.customerDatabaseModels
          .put(editCustomerController.customerDatabaseModel);
      await _isar.logCustomerDatabaseModels.put(
        LogCustomerDatabaseModel(
          name: editCustomerController.customerDatabaseModel.name,
          phone: nullIfEmpty(editCustomerController.customerDatabaseModel.phone),
          address: nullIfEmpty(editCustomerController.customerDatabaseModel.address),
          city: nullIfEmpty(editCustomerController.customerDatabaseModel.city),
          email: nullIfEmpty(editCustomerController.customerDatabaseModel.email),
          dateCreated: now,
          customerId: editCustomerController.customerDatabaseModel.customerId,
          userId: AppController.to.userId.value,
          lastModifiedByUserId: AppController.to.userId.value,
          lastModifiedDate: now,
          objectId: objectId,
        ),
      );
    });
  }
}
