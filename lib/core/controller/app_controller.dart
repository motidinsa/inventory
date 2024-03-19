import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/unit_of_measurement/log_unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/main.dart';

import '../constants/database_constants.dart';

class AppController extends GetxController {
  final formKey = GlobalKey<FormState>();
  var userId = ''.obs;
  List<String> currentPages = [];

  static AppController get to => Get.find();

  @override
  Future<void> onInit() async {
    super.onInit();
    currentPages.add('Homepage');
    final uomLength = isar.unitOfMeasurementDatabaseModels.countSync();
    if (uomLength == 0) {
      List<String> defaultUnitOfMeasurement = ['Pcs', 'Kg', 'Liter'];
      List<UnitOfMeasurementDatabaseModel> uomModels = [];
      List<LogUnitOfMeasurementDatabaseModel> logUomModels = [];
      for (var element in defaultUnitOfMeasurement) {
        DateTime now = DateTime.now();
        uomModels.add(
          UnitOfMeasurementDatabaseModel(
            createdByUserId: userId.value,
            name: element,
            uomId: generateDatabaseId(time: now, identifier: element),
            dateCreated: now,
          ),
        );
        logUomModels.add(LogUnitOfMeasurementDatabaseModel(
          createdByUserId: userId.value,
          name: element,
          uomId: generateDatabaseId(time: now, identifier: element),
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
