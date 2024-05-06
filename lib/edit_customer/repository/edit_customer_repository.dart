import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';

import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/log_customer_database_model.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:my_inventory/edit_customer/controller/edit_customer_controller.dart';

import 'package:my_inventory/core/model/customer/customer_model.dart';

class EditCustomerRepository {
  static final Isar _isar = Get.find();

  static editCustomer() async {
    CustomerDatabaseModel customerDatabaseModel =
        CustomerDetailController.to.customerDatabaseModel;
    CustomerModel customerModel = EditCustomerController.to.customerModel;
    DateTime now = DateTime.now();
    String objectId = generateDatabaseId(time: now);

    await _isar.writeTxn(() async {
      customerDatabaseModel.name = customerModel.name;
      customerDatabaseModel.phoneNumber =
          nullIfEmpty(customerModel.phoneNumber);
      customerDatabaseModel.address = nullIfEmpty(customerModel.address);
      customerDatabaseModel.city = nullIfEmpty(customerModel.city);
      customerDatabaseModel.email = nullIfEmpty(customerModel.email);
      customerDatabaseModel.lastModifiedByUserId =
          AppController.to.userId.value;
      customerDatabaseModel.lastModifiedDate = now;
      await _isar.customerDatabaseModels.put(customerDatabaseModel);
      await _isar.logCustomerDatabaseModels.put(
        LogCustomerDatabaseModel(
          name: customerDatabaseModel.name,
          phone: nullIfEmpty(customerDatabaseModel.phoneNumber),
          address: nullIfEmpty(customerDatabaseModel.address),
          city: nullIfEmpty(customerDatabaseModel.city),
          email: nullIfEmpty(customerDatabaseModel.email),
          dateCreated: now,
          customerId: customerDatabaseModel.customerId,
          userId: AppController.to.userId.value,
          lastModifiedByUserId: AppController.to.userId.value,
          lastModifiedDate: now,
          objectId: objectId,
        ),
      );
    });
  }
}
