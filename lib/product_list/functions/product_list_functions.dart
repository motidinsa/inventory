import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';

import 'package:my_inventory/core/model/product/product_database_model.dart';

import 'package:my_inventory/product_detail/ui/product_detail.dart';

import '../../core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

onProductListTextFieldChange({
  required String data,
}) {
  var productBox = Hive.box<ProductDatabaseModel>('products');
  ProductListController productListController = Get.find();
  productListController.searchedText(data);
  productListController.productList(productBox.values
      .where((product) =>
          product.productName.toLowerCase().contains(data.toLowerCase()))
      .toList());
}

onMiniProductDetailPressed(
    {required ProductDatabaseModel productDatabaseModel, required int index}) {
  unFocus();
  Get.to(() => ProductDetail(
        productDatabaseModel: productDatabaseModel,
        index: index,
      ));
}
getUomName({required String id}){
  var uomBox = Hive.box<UnitOfMeasurementDatabaseModel>('unit_of_measurement');
  return uomBox.get(id)!.name;
}