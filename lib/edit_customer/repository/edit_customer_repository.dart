import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';

import 'package:my_inventory/core/model/customer/log_customer_database_model.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:my_inventory/edit_customer/controller/edit_customer_controller.dart';

import 'package:my_inventory/core/model/customer/customer_model.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

class EditCustomerRepository {
  static final Isar _isar = Get.find();

  static editCustomer() async {
    CustomerDatabaseModel customerDatabaseModel =
        CustomerDetailController.to.customerDatabaseModel;
    CustomerModel customerModel = EditCustomerController.to.customerModel;
    DateTime now = DateTime.now();

    await _isar.writeTxn(() async {
      String name = customerModel.name.trim();
      String? phoneNumber = nullIfEmpty(customerModel.phoneNumber?.trim());
      String? address = nullIfEmpty(customerModel.address?.trim());
      String? city = nullIfEmpty(customerModel.city?.trim());
      String? email = nullIfEmpty(customerModel.email?.trim());
      String lastModifiedByUserId = AppController.to.userId;
      String companyId = AppController.to.companyId;

      customerDatabaseModel.name = name;
      customerDatabaseModel.phoneNumber = phoneNumber;
      customerDatabaseModel.address = address;
      customerDatabaseModel.city = city;
      customerDatabaseModel.email = email;
      customerDatabaseModel.lastModifiedByUserId = lastModifiedByUserId;
      customerDatabaseModel.lastModifiedDate = now;

      await _isar.customerDatabaseModels.put(customerDatabaseModel);
      await _isar.logCustomerDatabaseModels.put(
        LogCustomerDatabaseModel(
          name: name,
          phoneNumber: phoneNumber,
          address: address,
          city: city,
          email: email,
          dateCreated: now,
          customerId: customerDatabaseModel.customerId,
          addedByUserId: customerDatabaseModel.addedByUserId,
          companyId: companyId,
          lastModifiedByUserId: lastModifiedByUserId,
          lastModifiedDate: now,
        ),
      );
    });
  }
}
