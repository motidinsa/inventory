import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/signup/controller/signup_controller.dart';

import '../../core/functions/helper_functions.dart';
import '../repository/signup_repository.dart';

onAddLogoPressed() async {
  final ImagePicker imagePicker = ImagePicker();
  await imagePicker
      .pickImage(source: ImageSource.gallery, imageQuality: 50)
      .then((value) async {
    if (value != null) {
      SignupController.to.tempLogoPath = value.path;
      SignupController.to.update();
    }
  });
}

onLogoImageCancelPressed() async {
  SignupController.to.tempLogoPath = null;
  SignupController.to.update();
}

onSignupButtonPressed() async {
  SignupController signupController = SignupController.to;
  signupController.isLoading = true;
  signupController.update();
  try {
    await SignupRepository.saveSignupDetailToDB();
    showSnackbar(
      message: successfullySignedUpN,
    );
    Get.offAndToNamed(RouteName.homepage);
  } on Exception {
    showSnackbar(
      message: someErrorOccurredN,
      backgroundColor: Colors.grey.shade800,
    );
  } finally {
    signupController.isLoading = false;
    signupController.update();
  }
}

onSignUpTextFieldChange({
  required String title,
  required String data,
  int? index,
}) {
  SignupController signupController = Get.find();
  if (title == companyNameN) {
    signupController.companyName = data;
  } else if (title == firstNameN) {
    signupController.firstName = data;
  } else if (title == lastNameN) {
    signupController.lastName = data;
  } else if (title == phoneNumberN) {
    signupController.phoneNumber = data;
  } else if (title == emailN) {
    signupController.email = data;
  }
}
