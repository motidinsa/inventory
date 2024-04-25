import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';

class VendorDetailController extends GetxController {
  final int isarId;
  final String vendorId;
  late VendorDatabaseModel vendorDatabaseModel;
  VendorDetailController({required this.isarId, required this.vendorId});

  static VendorDetailController get to => Get.find();

  @override
  void onInit() {
    AppController.to.currentRoutes.add(vendorDetailN);final Isar isar = Get.find();
    vendorDatabaseModel = isar.vendorDatabaseModels.getSync(isarId)!;
    super.onInit();
  }
}
