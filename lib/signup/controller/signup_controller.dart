import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  String? tempLogoPath;
  bool isLoading = false;
  String companyName = '';
  String firstName = '';
  String lastName = '';
  String phoneNumber = '';
  String? email;
  final formKey = GlobalKey<FormState>();
  bool isSignupButtonPressed = false;
  static SignupController get to => Get.find();
}
