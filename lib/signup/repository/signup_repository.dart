import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/functions/image/image_functions.dart';
import 'package:my_inventory/signup/controller/signup_controller.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:my_inventory/core/constants/database_constants.dart';
import 'package:my_inventory/core/env/env.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';
import 'package:my_inventory/signup/model/sign_up_database_model.dart';

class SignupRepository {
  static final Isar _isar = Get.find();

  static saveSignupDetailToDB() async {
    SignupController signupController = SignupController.to;
    DateTime now = DateTime.now();
    String companyId = generateDatabaseId(time: now, identifier: 'comp');
    String adminId = generateDatabaseId(time: now, identifier: 'admin');
    await _isar.writeTxn(() async {
      if (signupController.tempLogoPath != null) {
        await saveImageToInternalStorage(
            filePath: signupController.tempLogoPath!);
      }
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
          offlineLogoPath: signupController.tempLogoPath,
        ),
      );
      await Get.find<FlutterSecureStorage>()
          .write(key: Env.loginKey, value: trueDC);
    });

    clearTemporaryFile();
  }

  static SignUpDatabaseModel getSignedUpUserData() {
    return _isar.signUpDatabaseModels.where().findAllSync().last;
  }

  static void clearImagePath() async {
    SignUpDatabaseModel signUpDatabaseModel =
        _isar.signUpDatabaseModels.where().findAllSync().last;
    await _isar.writeTxn(() async {
      signUpDatabaseModel.offlineLogoPath = null;
      await _isar.signUpDatabaseModels.put(signUpDatabaseModel);
    });
  }
}
