import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

class ProductDetailController extends GetxController {
  final AppController appController = Get.find();
  final int id;
  final String productId;

  ProductDetailController({required this.id,required this.productId});

  static ProductDetailController get to => Get.find();

  @override
  void onInit() {
    appController.currentPages.add(productDetailN);
    super.onInit();
  }
}
