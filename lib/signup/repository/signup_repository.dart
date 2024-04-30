import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/sign_up/sign_up_database_model.dart';
import 'package:my_inventory/signup/controller/signup_controller.dart';

class SignupRepository {
  static final Isar _isar = Get.find();


  static saveSignupDetailToDB() async {
    SignupController signupController = Get.find();
    DateTime now = DateTime.now();
    String companyId = generateDatabaseId(time: now,);
    // await _isar.writeTxn(() async {
    //   _isar.signUpDatabaseModels.put(SignUpDatabaseModel(
    //       companyName: signupController.companyName,
    //       firstName: signupController.firstName,
    //       lastName: signupController.lastName,
    //       phoneNumber: signupController.phoneNumber,
    //       email: signupController.email,
    //       registrationDate: DateTime.now(),
    //       companyId: companyId,
    //       adminId: adminId));
    // });
  }
}
