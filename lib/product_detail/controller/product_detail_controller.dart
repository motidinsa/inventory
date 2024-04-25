import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

class ProductDetailController extends GetxController {
  final int isarId;
  final String productId;

  ProductDetailController({required this.isarId, required this.productId});

  static ProductDetailController get to => Get.find();

  @override
  void onInit() {
    AppController.to.currentRoutes.add(productDetailN);
    super.onInit();
  }
}
