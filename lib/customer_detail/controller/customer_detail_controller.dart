import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

class CustomerDetailController extends GetxController {
  final int isarId;
  final String customerId;

  CustomerDetailController({required this.isarId, required this.customerId});

  static CustomerDetailController get to => Get.find();

  @override
  void onInit() {
    AppController.to.currentPages.add(productDetailN);
    super.onInit();
  }
}
