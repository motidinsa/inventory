import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:inventory/core/constants/database_constants.dart';
import 'package:inventory/core/model/unit_of_measurement/log_unit_of_measurement_database_model.dart';
import 'package:inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

import 'package:inventory/core/functions/helper_functions.dart';
import 'package:inventory/signup/repository/signup_repository.dart';

import '../../signup/controller/signup_controller.dart';
import '../../signup/model/sign_up_database_model.dart';

class AppController extends GetxController {
  final formKey = GlobalKey<FormState>();
  String userId = '';
  String companyId = '';
  String companyName = '';
  String? companyLogo;
  List<String> currentRoutes = [];
  String? currentRoute;
  var key = GlobalKey<ScaffoldState>();

  static AppController get to => Get.find();

  @override
  Future<void> onInit() async {
    super.onInit();
    SignUpDatabaseModel signUpDatabaseModel =
        SignupRepository.getSignedUpUserData();

    userId = signUpDatabaseModel.adminId;
    companyId = signUpDatabaseModel.companyId;
    companyName = signUpDatabaseModel.companyName;
    companyLogo = signUpDatabaseModel.offlineLogoPath;
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
            createdByUserId: userId,
            name: element,
            companyId: companyId,
            uomId: generateDatabaseId(time: now, identifier: element),
            dateCreated: now,
          ),
        );
        logUomModels.add(LogUnitOfMeasurementDatabaseModel(
          createdByUserId: userId,
          name: element,
          companyId: companyId,
          uomId: uomId,
          objectId: uomId,
          dateCreated: now,
          dateModified: now,
          modifiedByUserId: userId,
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
