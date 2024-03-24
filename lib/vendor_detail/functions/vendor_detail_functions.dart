import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';

import '../../main.dart';
import '../../vendor_list/controller/vendor_list_controller.dart';
import '../controller/vendor_detail_controller.dart';

deleteVendor() async {
  await isar.writeTxn(() async {
    await isar.vendorDatabaseModels.delete(VendorDetailController.to.isarId);
    // await isar.deletedProductDatabaseModels.put(DeletedProductDatabaseModel(
    //   productId: ProductDetailController.to.productId,
    //   deletedDate: DateTime.now(),
    //   deletedByUserId: AppController.to.userId.value,
    //   addedFrom: productDetailDC,
    // ));
  });
  VendorListController.to.vendorList(isar.vendorDatabaseModels
      .filter()
      .nameContains(VendorListController.to.searchedText.value)
      .findAllSync());
  Get.back();
}
