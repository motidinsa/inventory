import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/controller/add_item_controller.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/category/log_category_database_model.dart';

import 'package:my_inventory/core/model/customer/customer_database_model.dart';

import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/customer/customer_model.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
import 'package:my_inventory/core/model/customer/log_customer_database_model.dart';

import '../constants/database_constants.dart';
import '../routes/route_names.dart';

class AddItemRepository {
  static final Isar _isar = Get.find();

  static addCategory() async {
    String categoryName = AddItemController.to.addedText;
    DateTime now = DateTime.now();
    String categoryId = generateDatabaseId(time: now);
    String userId = AppController.to.userId.value;
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

  static getAllCategory() {
    return _isar.categoryDatabaseModels.where().findAllSync();
  }
}
