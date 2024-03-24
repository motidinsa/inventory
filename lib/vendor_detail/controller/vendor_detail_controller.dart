import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

class VendorDetailController extends GetxController {
  final int isarId;
  final String vendorId;

  VendorDetailController({required this.isarId, required this.vendorId});

  static VendorDetailController get to => Get.find();

  @override
  void onInit() {
    AppController.to.currentPages.add(vendorDetailN);
    super.onInit();
  }
}
