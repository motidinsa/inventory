import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

class AppController extends GetxController {
  final formKey = GlobalKey<FormState>();
  var userId = ''.obs;
  List<String> currentPages = [];

  @override
  void onInit() {
    super.onInit();
    currentPages.add('Homepage');
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
