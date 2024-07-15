import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/product/deleted_product_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';

import 'package:my_inventory/core/constants/database_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';
import 'package:my_inventory/product_detail/controller/product_detail_controller.dart';

getProductCategoryName({String? id}) {
  if (id != null) {  final Isar isar = Get.find();
    String? name = isar.categoryDatabaseModels
        .filter()
        .categoryIdEqualTo(id)
        .findFirstSync()
        ?.categoryName;

    return name;
  }
}

getUomName({required String id}) {  final Isar isar = Get.find();
  String? name = isar.unitOfMeasurementDatabaseModels
      .filter()
      .uomIdEqualTo(id)
      .findFirstSync()
      ?.name;
  return name;
}

deleteProduct() async {
  // final Isar isar = Get.find();
  // await isar.writeTxn(() async {
  //   await isar.productDatabaseModels.delete(ProductDetailController.to.isarId);
  //   await isar.deletedProductDatabaseModels.put(DeletedProductDatabaseModel(
  //     productId: ProductDetailController.to.productId,
  //     deletedDate: DateTime.now(),
  //     deletedByUserId: AppController.to.userId,
  //     addedFrom: productDetailDC,
  //   ));
  // });
  // ProductListController.to.productList(isar.productDatabaseModels
  //     .filter()
  //     .productNameContains(ProductListController.to.searchedText.value)
  //     .findAllSync());
  // Get.back();
}
