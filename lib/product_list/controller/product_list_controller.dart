import 'package:get/get.dart';
import 'package:hive/hive.dart';

import 'package:my_inventory/core/model/product/product_database_model.dart';

class ProductListController extends GetxController {
  var productBox = Hive.box<ProductDatabaseModel>('products');
  var emptyValue = ''.obs;
  var searchedText = ''.obs;
  var productList = [].obs;

  @override
  void onInit() {
    productList(productBox.values.toList());
    super.onInit();
  }
}
