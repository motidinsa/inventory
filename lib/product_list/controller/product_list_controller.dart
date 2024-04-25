import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';

class ProductListController extends GetxController {
  var emptyValue = ''.obs;
  var searchedText = ''.obs;
  var productList = [].obs;
  int? selectedId;

  static ProductListController get to => Get.find();
  @override
  void onInit() {  final Isar isar = Get.find();
    productList(isar.productDatabaseModels.where().findAllSync());
    AppController.to.currentRoutes.add(productListN);
    super.onInit();
  }
}
