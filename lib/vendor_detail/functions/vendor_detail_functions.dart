import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';

import 'package:my_inventory/main.dart';
import 'package:my_inventory/vendor_list/controller/vendor_list_controller.dart';
import 'package:my_inventory/vendor_detail/controller/vendor_detail_controller.dart';

deleteVendor() async {final Isar isar = Get.find();
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
