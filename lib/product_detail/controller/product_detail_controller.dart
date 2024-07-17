import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

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
