import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';

import '../../main.dart';

class ProductListController extends GetxController {
  var emptyValue = ''.obs;
  var searchedText = ''.obs;
  var productList = [].obs;

  @override
  Future<void> onInit() async {
    productList(isar.productDatabaseModels.where().findAllSync());
    AppController.to.currentPages.add(productListN());
    super.onInit();
  }
}
