import 'package:get/get.dart';
import 'package:isar/isar.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';

import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/customer_model.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';

class AddCustomerRepository {
  static final Isar _isar = Get.find();

  static addCustomer() async {
    CustomerModel customerDetail = AddCustomerController.to.customerDetail;
    DateTime now = DateTime.now();
    String customerId = generateDatabaseId(time: now);
    final CustomerDatabaseModel customerDatabaseModel = CustomerDatabaseModel(
      name: customerDetail.name,
      phone: customerDetail.phoneNumber,
      address: customerDetail.address,
      city: customerDetail.city,
      email: customerDetail.email,
      dateCreated: now,
      customerId: customerId,
    );
    await _isar.writeTxn(() async {
      await _isar.customerDatabaseModels.put(customerDatabaseModel);
      // await isar.logProductDatabaseModels.put(logDbProduct);
    });
  }
}
