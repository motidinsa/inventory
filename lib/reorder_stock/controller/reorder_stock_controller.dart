import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/main.dart';

class ReorderStockController extends GetxController {
  List<ProductDatabaseModel> productDatabaseModels = [];

  static ReorderStockController get to => Get.find();

  @override
  void onInit() {
    AppController.to.currentPages.add(reorderQuantityN);
    for (var element in isar.productDatabaseModels
        .filter()
        .quantityOnHandGreaterThan(0)
        .findAllSync()) {
      if(element.quantityOnHand<=element.reorderQuantity){
        productDatabaseModels.add(
          element,
        );
      }
    }
    super.onInit();
  }
}
