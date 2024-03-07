import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';

import 'package:my_inventory/core/model/product/product_database_model.dart';

onProductListTextFieldChange({
  required String data,
}) {
  var productBox = Hive.box<ProductDatabaseModel>('products');
  ProductListController productListController = Get.find();
  productListController.productList(productBox.values
      .where((product) =>
          product.productName.toLowerCase().contains(data.toLowerCase()))
      .toList());
}
