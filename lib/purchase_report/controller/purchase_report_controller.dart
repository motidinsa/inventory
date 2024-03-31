import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_all_database_model.dart';
import 'package:my_inventory/main.dart';
import 'package:my_inventory/purchase_report/model/purchase_report_model.dart';

class PurchaseReportController extends GetxController {
  DateTime now = DateTime.now();
  List<PurchaseReportModel> purchaseReportModels = [];
  double totalCost = 0;
  DateTime? startDate;
  DateTime? endDate;
  DateTime? displayStartDate;
  DateTime? displayEndDate;

  static PurchaseReportController get to => Get.find();

  @override
  void onInit() {
    AppController.to.currentPages.add(purchaseReportN);
    for (var element in isar.purchaseAllDatabaseModels
        .where()
        .sortByPurchaseDateDesc()
        .findAllSync()) {
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

  onPurchaseReportFilterPressed() {
    purchaseReportModels.clear();
    totalCost = 0;
    for (var element in isar.purchaseAllDatabaseModels
        .filter()
        .purchaseDateBetween(startDate!, endDate!.add(Duration(days: 1)),
            includeUpper: false)
        .sortByPurchaseDateDesc()
        .findAllSync()) {
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
    update();
  }
}
