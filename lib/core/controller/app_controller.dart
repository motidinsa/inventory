import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/database_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/unit_of_measurement/log_unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

class AppController extends GetxController {
  final formKey = GlobalKey<FormState>();
  var userId = 'mo'.obs;
  String companyId = 'XYZ';
  List<String> currentRoutes = [];
  var key = GlobalKey<ScaffoldState>();

  static AppController get to => Get.find();

  @override
  Future<void> onInit() async {
    super.onInit();
    final Isar isar = Get.find();
    final uomLength = isar.unitOfMeasurementDatabaseModels.countSync();
    if (uomLength == 0) {
      List<String> defaultUnitOfMeasurement = ['Pcs', 'Kg', 'Liter'];
      List<UnitOfMeasurementDatabaseModel> uomModels = [];
      List<LogUnitOfMeasurementDatabaseModel> logUomModels = [];
      for (var element in defaultUnitOfMeasurement) {
        DateTime now = DateTime.now();
        String uomId = generateDatabaseId(time: now, identifier: element);
        uomModels.add(
          UnitOfMeasurementDatabaseModel(
            createdByUserId: userId.value,
            name: element,
            companyId: companyId,
            uomId: generateDatabaseId(time: now, identifier: element),
            dateCreated: now,
          ),
        );
        logUomModels.add(LogUnitOfMeasurementDatabaseModel(
          createdByUserId: userId.value,
          name: element,
          companyId: companyId,
          uomId: uomId,
          objectId: uomId,
          dateCreated: now,
          dateModified: now,
          modifiedByUserId: userId.value,
          addedFrom: initialDC,
        ));
      }
      await isar.writeTxn(() async {
        await isar.unitOfMeasurementDatabaseModels.putAll(uomModels);
        await isar.logUnitOfMeasurementDatabaseModels.putAll(logUomModels);
      });
    }
  }
}
