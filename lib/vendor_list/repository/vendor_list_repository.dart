import 'package:get/get.dart';
import 'package:isar/isar.dart';


import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';

class VendorListRepository {
  static final Isar _isar = Get.find();

  static List<VendorDatabaseModel> getAllVendors() {
    return _isar.vendorDatabaseModels
        .where()
        .sortByDateCreatedDesc()
        .findAllSync();
  }

  static List<VendorDatabaseModel> searchVendor({required String data}) {
    return _isar.vendorDatabaseModels
        .filter()
        .nameContains(data, caseSensitive: false)
        .sortByDateCreatedDesc()
        .findAllSync();
  }
}
