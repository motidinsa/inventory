import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/product_detail/ui/product_detail.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

import '../../product_detail/controller/product_detail_controller.dart';

onProductListTextFieldChange({
  required String data,
}) {
  ProductListController productListController = Get.find();
  productListController.searchedText(data);
  final Isar isar = Get.find();
  productListController.productList(isar.productDatabaseModels
      .filter()
      .productNameContains(data, caseSensitive: false)
      .findAllSync());
}

onMiniProductDetailPressed(
    {required ProductDatabaseModel productDatabaseModel, required int index}) {
  unFocus();
  // Get.put(ProductDetailController(productDatabaseModel: productDatabaseModel));
  Get.toNamed(RouteName.productDetail,arguments: productDatabaseModel);
}
