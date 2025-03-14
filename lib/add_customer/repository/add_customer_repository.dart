import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:inventory/core/controller/app_controller.dart';

import 'package:inventory/core/model/customer/customer_database_model.dart';

import 'package:inventory/core/model/customer/customer_model.dart';
import 'package:inventory/add_customer/controller/add_customer_controller.dart';
import 'package:inventory/core/model/customer/log_customer_database_model.dart';

import 'package:inventory/core/functions/helper_functions.dart';

class AddCustomerRepository {
  static final Isar _isar = Get.find();

  static addCustomer() async {
    CustomerModel customerModel = AddCustomerController.to.customerModel;
    AppController appController = AppController.to;
    DateTime now = DateTime.now();
    String customerId = generateDatabaseId(time: now);
    String name = customerModel.name.trim();
    String? phoneNumber = nullIfEmpty(customerModel.phoneNumber?.trim());
    String? address = nullIfEmpty(customerModel.address?.trim());
    String? city = nullIfEmpty(customerModel.city?.trim());
    String? email = nullIfEmpty(customerModel.email?.trim());
    String addedByUserId = appController.userId;
    String companyId = appController.companyId;

    final CustomerDatabaseModel customerDatabaseModel = CustomerDatabaseModel(
      name: name,
      phoneNumber: phoneNumber,
      address: address,
      city: city,
      email: email,
      dateCreated: now,
      customerId: customerId,
      addedByUserId: addedByUserId,
      companyId: companyId,
    );
    await _isar.writeTxn(() async {
      await _isar.customerDatabaseModels.put(customerDatabaseModel);
      await _isar.logCustomerDatabaseModels.put(
        LogCustomerDatabaseModel(
          name: name,
          phoneNumber: phoneNumber,
          address: address,
          city: city,
          email: email,
          dateCreated: now,
          customerId: customerId,
          addedByUserId: addedByUserId,
          companyId: companyId,
        ),
      );
    });
  }
}
