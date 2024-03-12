import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/product/product_isar.dart';

import 'package:my_inventory/main.dart';

class ProductListController extends GetxController {
  var productBox = Hive.box<ProductDatabaseModel>('products');
  var emptyValue = ''.obs;
  var searchedText = ''.obs;
  var productList = [].obs;

  @override
  Future<void> onInit() async {
    productList(productBox.values.toList());
    super.onInit();
  }
}
