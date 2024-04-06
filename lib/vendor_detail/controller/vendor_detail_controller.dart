import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/main.dart';

class VendorDetailController extends GetxController {
  final int isarId;
  final String vendorId;
  late VendorDatabaseModel vendorDatabaseModel;
  VendorDetailController({required this.isarId, required this.vendorId});

  static VendorDetailController get to => Get.find();

  @override
  void onInit() {
    AppController.to.currentPages.add(vendorDetailN);
    vendorDatabaseModel = isar.vendorDatabaseModels.getSync(isarId)!;
    super.onInit();
  }
}
