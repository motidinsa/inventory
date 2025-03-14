import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddItemController extends GetxController {
  String addedText = '';
  final formKey = GlobalKey<FormState>();

  static AddItemController get to => Get.find();
}
