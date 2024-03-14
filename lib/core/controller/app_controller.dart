import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

import '../../main.dart';
import '../functions/core_functions.dart';

class AppController extends GetxController {
  static AppController get to => Get.find();
  final formKey = GlobalKey<FormState>();
  var userId = ''.obs;
  List<String> currentPages = [];
  var x = 0;

  void increment() {
    x++;
    update();
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    currentPages.add('Homepage');
    final uomLength = isar.unitOfMeasurementDatabaseModels.countSync();
    if (uomLength == 0) {
      List<String> defaultUnitOfMeasurement = ['Pcs', 'Kg', 'Liter'];
      List<UnitOfMeasurementDatabaseModel> uomModels = [];
      for (var element in defaultUnitOfMeasurement) {
        DateTime now = DateTime.now();
        uomModels.add(
          UnitOfMeasurementDatabaseModel()
            ..createdByUserId = userId.value
            ..name = element
            ..uomId = generateDatabaseId(time: now, identifier: element)
            ..dateCreated = now
            ..lastDateModified = now
            ..lastModifiedByUserId = userId.value,
        );
      }
      await isar.writeTxn(() async {
        await isar.unitOfMeasurementDatabaseModels.putAll(uomModels);
      });
    }

    // var uomBox =
    //     Hive.box<UnitOfMeasurementDatabaseModel>('unit_of_measurement');
    // if (uomBox.isEmpty) {
    //   List<String> defaultUnitOfMeasurement = ['Pcs', 'Kg', 'Liter'];
    //   for (var element in defaultUnitOfMeasurement) {
    //     DateTime now = DateTime.now();
    //     String id = generateDatabaseId(time: now, identifier: element);
    //     uomBox.put(
    //       id,
    //       UnitOfMeasurementDatabaseModel(
    //         name: element,
    //         dateCreated: now,
    //         dateModified: now,
    //         createdByUserId: userId.value,
    //         uomId: id,
    //       ),
    //     );
    //   }
    // }
  }
}
