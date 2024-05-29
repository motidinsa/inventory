import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/signup/controller/signup_controller.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';
import 'package:my_inventory/signup/repository/signup_repository.dart';

import '../../core/functions/image/image_functions.dart';
import '../../core/routes/route_names.dart';

onAddLogoPressed() async {
  final ImagePicker imagePicker = ImagePicker();
  await clearTemporaryFile();
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
  clearTemporaryFile();
}

onSignupButtonPressed() async {
  SignupController signupController = SignupController.to;
  signupController.isSignupButtonPressed = true;
  if (signupController.formKey.currentState!.validate()) {
    signupController.isLoading = true;
    signupController.update();
    try {
      await SignupRepository.saveSignupDetailToDB();
      showSnackbar(
        message: successfullySignedUpN,success: true
      );
      Get.offAndToNamed(RouteName.homepage);
    } on Exception {
      showSnackbar(
        message: someErrorOccurredN,success: false

      );
    } finally {
      signupController.isLoading = false;
    }
  }

  signupController.update();
}

onSignUpTextFieldChange({
  required String title,
  required String data,
  int? index,
}) {
  SignupController signupController = SignupController.to;
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

  if(signupController.isSignupButtonPressed){
    signupController.update();
  }
}
