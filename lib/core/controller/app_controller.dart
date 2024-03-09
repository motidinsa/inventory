import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../functions/core_functions.dart';
import '../model/unit_of_measurement/unit_of_measurement_database_model.dart';

class AppController extends GetxController {
  final formKey = GlobalKey<FormState>();
  var userId = ''.obs;

  @override
  void onInit() {
    super.onInit();
    var uomBox =
        Hive.box<UnitOfMeasurementDatabaseModel>('unit_of_measurement');
    if (uomBox.isEmpty) {
      List<String> defaultUnitOfMeasurement = ['Pcs', 'Kg', 'Liter'];
      for (var element in defaultUnitOfMeasurement) {
        DateTime now = DateTime.now();
        String id = generateDatabaseId(now);
        uomBox.put(
          id,
          UnitOfMeasurementDatabaseModel(
            name: element,
            dateCreated: now,
            dateModified: now,
            createdByUserId: userId.value,
            uomId: id,
          ),
        );
      }
    }
  }

// late Isar isar;
  //
  // @override
  // Future<void> onInit() async {
  //   super.onInit();
  //   final dir = await getApplicationDocumentsDirectory();
  //    isar = await Isar.open(
  //     [VendorDatabaseModelSchema],
  //     directory: dir.path,
  //   );
  // }
// AppController(this.isar);
}
