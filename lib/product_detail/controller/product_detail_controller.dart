import 'package:get/get.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/controller/app_controller.dart';

import '../../core/model/product/product_database_model.dart';

class ProductDetailController extends GetxController {
  late ProductDatabaseModel productDatabaseModel;
  static ProductDetailController get to => Get.find();
  @override
  void onInit() {
    productDatabaseModel = Get.arguments;
    super.onInit();
  }
}
