import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';

import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/customer_model.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
import 'package:my_inventory/core/model/customer/log_customer_database_model.dart';

class AddCustomerRepository {
  static final Isar _isar = Get.find();

  static addCustomer() async {
    CustomerModel customerDetail = AddCustomerController.to.customerModel;
    DateTime now = DateTime.now();
    String customerId = generateDatabaseId(time: now);
    final CustomerDatabaseModel customerDatabaseModel = CustomerDatabaseModel(
      name: customerDetail.name.trim(),
      phoneNumber: nullIfEmpty(customerDetail.phoneNumber?.trim()),
      address: nullIfEmpty(customerDetail.address?.trim()),
      city: nullIfEmpty(customerDetail.city?.trim()),
      email: nullIfEmpty(customerDetail.email?.trim()),
      dateCreated: now,
      customerId: customerId,
      addedByUserId: AppController.to.userId.value,
    );
    await _isar.writeTxn(() async {
      await _isar.customerDatabaseModels.put(customerDatabaseModel);
      await _isar.logCustomerDatabaseModels.put(
        LogCustomerDatabaseModel(
            name: customerDetail.name.trim(),
            phoneNumber: nullIfEmpty(customerDetail.phoneNumber?.trim()),
            address: nullIfEmpty(customerDetail.address?.trim()),
            city: nullIfEmpty(customerDetail.city?.trim()),
            email: nullIfEmpty(customerDetail.email?.trim()),
            dateCreated: now,
            customerId: customerId,
            addedByUserId: AppController.to.userId.value,
            objectId: customerId),
      );
    });
  }
}
