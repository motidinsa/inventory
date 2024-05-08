import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';

import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/customer_model.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
import 'package:my_inventory/core/model/customer/log_customer_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

class AddProductRepository {
  static final Isar _isar = Get.find();

  static List<CategoryDatabaseModel> getAllCategory() {
    return _isar.categoryDatabaseModels.where().findAllSync();
  }

  static int getCategoryCount() {
    return _isar.categoryDatabaseModels.countSync();
  }

  static List<CategoryDatabaseModel> searchCategory({required String data}) {
    return _isar.categoryDatabaseModels
        .filter()
        .categoryNameContains(data, caseSensitive: false)
        .sortByDateCreatedDesc()
        .findAllSync();
  }

  static List<UnitOfMeasurementDatabaseModel> getAllUnitOfMeasurement() {
    return _isar.unitOfMeasurementDatabaseModels.where().findAllSync();
  }

  static int getUnitOfMeasurementCount() {
    return _isar.unitOfMeasurementDatabaseModels.countSync();
  }

  static List<UnitOfMeasurementDatabaseModel> searchUnitOfMeasurement(
      {required String data}) {
    return _isar.unitOfMeasurementDatabaseModels
        .filter()
        .nameContains(data, caseSensitive: false)
        .sortByDateCreatedDesc()
        .findAllSync();
  }
}
