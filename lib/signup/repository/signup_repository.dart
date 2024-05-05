import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/sign_up/sign_up_database_model.dart';
import 'package:my_inventory/signup/controller/signup_controller.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:my_inventory/core/constants/database_constants.dart';
import 'package:my_inventory/core/env/env.dart';

class SignupRepository {
  static final Isar _isar = Get.find();

  static saveSignupDetailToDB() async {
    SignupController signupController = Get.find();
    DateTime now = DateTime.now();
    String companyId = generateDatabaseId(time: now, identifier: 'comp');
    String adminId = generateDatabaseId(time: now, identifier: 'admin');
    await _isar.writeTxn(() async {
      await _isar.signUpDatabaseModels.put(
        SignUpDatabaseModel(
          companyName: signupController.companyName,
          firstName: signupController.firstName,
          lastName: signupController.lastName,
          phoneNumber: signupController.phoneNumber,
          email: signupController.email,
          registrationDate: now,
          companyId: companyId,
          adminId: adminId,
        ),
      );
      await Get.find<FlutterSecureStorage>()
          .write(key: Env.loginKey, value: trueDC);
    });
  }
}
