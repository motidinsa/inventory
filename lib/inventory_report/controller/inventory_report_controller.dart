import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';

class InventoryReportController extends GetxController {
  DateTime now = DateTime.now();
  List<ProductDatabaseModel> productDatabaseModels = [];
  double totalCost = 0;
  DateTime? startDate;
  DateTime? endDate;
  DateTime? displayStartDate;
  DateTime? displayEndDate;

  static InventoryReportController get to => Get.find();

  @override
  void onInit() {
    AppController.to.currentPages.add(inventoryReportN);  final Isar isar = Get.find();
    for (var element in isar.productDatabaseModels
        .where().sortByDateCreatedDesc()
        .findAllSync()) {
      double totalCostAmount = element.quantityOnHand * element.cost;
      productDatabaseModels.add(
       element
      );
      totalCost += totalCostAmount;
    }
    super.onInit();
  }

}
