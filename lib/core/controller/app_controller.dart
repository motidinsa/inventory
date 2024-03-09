import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  final formKey = GlobalKey<FormState>();
  var userId = ''.obs;
  // late Isar isar;
  //
  // @override
  // Future<void> onInit() async {
  //   super.onInit();
  //   final dir = await getApplicationDocumentsDirectory();
  //    isar = await Isar.open(
  //     [VendorDatabaseModelSchema],
  //     directory: dir.path,
  //   );
  // }
// AppController(this.isar);
}
