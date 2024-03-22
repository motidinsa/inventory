import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';

import 'package:my_inventory/main.dart';

deleteCustomer() async {
  await isar.writeTxn(() async {
    await isar.customerDatabaseModels
        .delete(CustomerDetailController.to.isarId);
    // await isar.deletedProductDatabaseModels.put(DeletedProductDatabaseModel(
    //   productId: ProductDetailController.to.productId,
    //   deletedDate: DateTime.now(),
    //   deletedByUserId: AppController.to.userId.value,
    //   addedFrom: productDetailDC,
    // ));
  });
  CustomerListController.to.customerList(isar.customerDatabaseModels
      .filter()
      .nameContains(CustomerListController.to.searchedText.value)
      .findAllSync());
  Get.back();
}
