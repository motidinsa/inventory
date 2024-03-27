import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_all_database_model.dart';
import 'package:my_inventory/main.dart';

import '../model/purchase_report_model.dart';

class PurchaseReportController extends GetxController {
  DateTime now = DateTime.now();
  List<PurchaseReportModel> purchaseReportModels = [];
  // List<PurchaseAllDatabaseModel> purchaseDatabaseModels = [];
  double totalCost = 0;
  static PurchaseReportController get to => Get.find();

  @override
  void onInit() {
    AppController.to.currentPages.add(purchaseReportN);
    for (var element in isar.purchaseAllDatabaseModels.where().findAllSync()) {
      double totalCostAmount = element.quantity * element.cost;
      purchaseReportModels.add(
        PurchaseReportModel(
          purchaseDate: element.purchaseDate,
          productName: isar.productDatabaseModels
              .filter()
              .productIdEqualTo(element.productId)
              .findFirstSync()!
              .productName,
          quantity: element.quantity,
          unitCost: element.cost,
          totalCost: totalCostAmount,
        ),
      );
      totalCost += totalCostAmount;
    }
    super.onInit();
  }
}
