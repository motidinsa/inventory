import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/controller/app_controller.dart';
import 'package:inventory/core/model/product/product_database_model.dart';

class ReorderStockController extends GetxController {
  List<ProductDatabaseModel> productDatabaseModels = [];

  static ReorderStockController get to => Get.find();

  @override
  void onInit() {
    AppController.to.currentRoutes.add(reorderQuantityN);final Isar isar = Get.find();
    for (var element in isar.productDatabaseModels
        .where()
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
