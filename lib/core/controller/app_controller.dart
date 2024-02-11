import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:path_provider/path_provider.dart';

class AppController extends GetxController {
  late Isar isar;

  @override
  Future<void> onInit() async {
    super.onInit();
    final dir = await getApplicationDocumentsDirectory();
     isar = await Isar.open(
      [VendorDatabaseModelSchema],
      directory: dir.path,
    );
  }
// AppController(this.isar);

}


