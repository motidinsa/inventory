import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/controller/app_controller.dart';
import 'package:inventory/core/model/product/product_database_model.dart';
import 'package:inventory/core/model/purchase/purchase_all_database_model.dart';
import 'package:inventory/purchase_report/model/purchase_report_model.dart';

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
    AppController.to.currentRoutes.add(purchaseReportN);  final Isar isar = Get.find();
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
    totalCost = 0;  final Isar isar = Get.find();
    for (var element in isar.purchaseAllDatabaseModels
        .filter()
        .purchaseDateBetween(startDate!, endDate!.add(const Duration(days: 1)),
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
