import 'package:get/get.dart';
import 'package:isar/isar.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';

import '../../core/model/product/product_database_model.dart';

class ProductListRepository {
  static final Isar _isar = Get.find();

  static List<ProductDatabaseModel> getAllProducts() {
    return _isar.productDatabaseModels
        .where()
        .findAllSync();
  }

  static List<ProductDatabaseModel> searchProduct({required String data}) {
    return _isar.productDatabaseModels
        .filter()
        .productNameContains(data, caseSensitive: false)
        .sortByDateCreatedDesc()
        .findAllSync();
  }
}
