import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/signup/controller/signup_controller.dart';

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

onSignupButtonPressed() {
  SignupController signupController = SignupController.to;
  signupController.isLoading = true;
  signupController.update();
  Future.delayed(
    Duration(seconds: 3),
    () {
      signupController.isLoading = false;
      signupController.update();
    },
  );
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
