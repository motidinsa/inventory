import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';

class SignupController extends GetxController {
  static  List<String> signUpRequirements = [

    firstNameN,
    lastNameN,
    phoneNumberN,
    companyNameN
  ];
  static  List<IconData> signUpRequirementsIcon = [
    Icons.person_rounded,
    Icons.person_rounded,
    Icons.phone,
    Icons.corporate_fare_rounded
  ];

  static SignupController get to => Get.find();
}
