import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_all_database_model.dart';
import 'package:my_inventory/core/model/sales/group_sales_database_model.dart';
import 'package:my_inventory/core/model/sales/quantity_cost_database_model.dart';
import 'package:my_inventory/core/model/sales/sales_database_model.dart';
import 'package:my_inventory/main.dart';
import 'package:my_inventory/sales_report/model/sales_report_model.dart';

class SalesReportController extends GetxController {
  DateTime now = DateTime.now();
  List<SalesReportModel> salesReportModels = [];
  double subtotal = 0;
  double discount = 0;
  DateTime? startDate;
  DateTime? endDate;
  DateTime? displayStartDate;
  DateTime? displayEndDate;

  static SalesReportController get to => Get.find();

  @override
  void onInit() {
    AppController.to.currentPages.add(salesReportN);
    String? currentGroupSalesId;
    for (var element in isar.salesDatabaseModels
        .where()
        .sortBySalesDateDesc()
        .findAllSync()) {
      List<QuantityCostDatabaseModel> quantityCostDatabaseModels = isar
          .quantityCostDatabaseModels
          .filter()
          .salesIdEqualTo(element.salesId)
          .findAllSync();

      for (var quantityCostElement in quantityCostDatabaseModels) {
        double totalCost = quantityCostElement.quantity *
            isar.purchaseAllDatabaseModels
                .filter()
                .purchaseIdEqualTo(quantityCostElement.purchaseId)
                .findFirstSync()!
                .cost;
        double totalPrice = quantityCostElement.quantity * element.price;
        salesReportModels.add(SalesReportModel(
          salesDate: element.salesDate,
          quantity: quantityCostElement.quantity,
          productName: isar.productDatabaseModels
              .filter()
              .productIdEqualTo(element.productId)
              .findFirstSync()!
              .productName,
          totalCost: totalCost,
          totalPrice: totalPrice,
        ));
        subtotal += totalPrice - totalCost;
      }
      if (currentGroupSalesId != element.groupSalesId) {
        discount += isar.groupSalesDatabaseModels
            .filter()
            .groupSalesIdEqualTo(element.groupSalesId)
            .findFirstSync()!
            .discount;
      }
      currentGroupSalesId = element.groupSalesId;
    }
    super.onInit();
  }

  onSalesReportFilterPressed() {
    String? currentGroupSalesId;
    salesReportModels.clear();
    subtotal = 0;
    discount = 0;
    for (var element in isar.salesDatabaseModels
        .filter()
        .salesDateBetween(startDate!, endDate!.add(const Duration(days: 1)),
            includeUpper: false)
        .sortBySalesDateDesc()
        .findAllSync()) {
      List<QuantityCostDatabaseModel> quantityCostDatabaseModels = isar
          .quantityCostDatabaseModels
          .filter()
          .salesIdEqualTo(element.salesId)
          .findAllSync();

      for (var quantityCostElement in quantityCostDatabaseModels) {
        double totalCost = quantityCostElement.quantity *
            isar.purchaseAllDatabaseModels
                .filter()
                .purchaseIdEqualTo(quantityCostElement.purchaseId)
                .findFirstSync()!
                .cost;
        double totalPrice = quantityCostElement.quantity * element.price;
        salesReportModels.add(SalesReportModel(
          salesDate: element.salesDate,
          quantity: quantityCostElement.quantity,
          productName: isar.productDatabaseModels
              .filter()
              .productIdEqualTo(element.productId)
              .findFirstSync()!
              .productName,
          totalCost: totalCost,
          totalPrice: totalPrice,
        ));
        subtotal += totalPrice - totalCost;
      }
      if (currentGroupSalesId != element.groupSalesId) {
        discount += isar.groupSalesDatabaseModels
            .filter()
            .groupSalesIdEqualTo(element.groupSalesId)
            .findFirstSync()!
            .discount;
      }
      currentGroupSalesId = element.groupSalesId;
    }
    update();
  }
}
