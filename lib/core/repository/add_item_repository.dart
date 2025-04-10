import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:inventory/core/controller/add_item_controller.dart';
import 'package:inventory/core/controller/app_controller.dart';
import 'package:inventory/core/model/category/category_database_model.dart';
import 'package:inventory/core/model/category/log_category_database_model.dart';


import 'package:inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

import 'package:inventory/core/constants/database_constants.dart';
import 'package:inventory/core/functions/helper_functions.dart';
import 'package:inventory/core/model/unit_of_measurement/log_unit_of_measurement_database_model.dart';
import 'package:inventory/core/routes/route_names.dart';

class AddItemRepository {
  static final Isar _isar = Get.find();

  static addCategory() async {
    String categoryName = AddItemController.to.addedText;
    DateTime now = DateTime.now();
    String categoryId = generateDatabaseId(time: now);
    String userId = AppController.to.userId;
    String companyId = AppController.to.companyId;
    await _isar.writeTxn(() async {
      await _isar.categoryDatabaseModels.put(CategoryDatabaseModel(
        categoryName: categoryName,
        dateCreated: now,
        createdByUserId: userId,
        companyId: companyId,
        categoryId: categoryId,
      ));
      await _isar.logCategoryDatabaseModels.put(LogCategoryDatabaseModel(
        categoryName: categoryName,
        dateCreated: now,
        createdByUserId: userId,
        objectId: categoryId,
        companyId: companyId,
        categoryId: categoryId,
        dateModified: now,
        addedFrom: Get.currentRoute == RouteName.addProduct
            ? addProductDC
            : editProductDC,
      ));
    });
  }

  static List<CategoryDatabaseModel> getAllCategory() {
    return _isar.categoryDatabaseModels.where().findAllSync();
  }

  static addUnitOfMeasurement() async {
    String uomName = AddItemController.to.addedText;
    DateTime now = DateTime.now();
    String uomId = generateDatabaseId(time: now);
    String userId = AppController.to.userId;
    String companyId = AppController.to.companyId;
    await _isar.writeTxn(() async {
      await _isar.unitOfMeasurementDatabaseModels
          .put(UnitOfMeasurementDatabaseModel(
        name: uomName,
        dateCreated: now,
        createdByUserId: userId,
        companyId: companyId,
        uomId: uomId,
      ));
      await _isar.logUnitOfMeasurementDatabaseModels
          .put(LogUnitOfMeasurementDatabaseModel(
        name: uomName,
        dateCreated: now,
        createdByUserId: userId,
        objectId: userId,
        companyId: companyId,
        uomId: uomId,
        dateModified: now,
        addedFrom: Get.currentRoute == RouteName.addProduct
            ? addProductDC
            : editProductDC,
      ));
    });
  }

  static List<UnitOfMeasurementDatabaseModel> getAllUnitOfMeasurement() {
    return _isar.unitOfMeasurementDatabaseModels.where().findAllSync();
  }
}
