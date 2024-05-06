import 'package:get/get.dart';
import 'package:isar/isar.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';

class CustomerListRepository {
  static final Isar _isar = Get.find();

  static List<CustomerDatabaseModel> getAllCustomers() {
    return _isar.customerDatabaseModels
        .where()
        .sortByDateCreatedDesc()
        .findAllSync();
  }

  static List<CustomerDatabaseModel> searchCustomer({required String data}) {
    return _isar.customerDatabaseModels
        .filter()
        .nameContains(data, caseSensitive: false)
        .sortByDateCreatedDesc()
        .findAllSync();
  }
}
