import 'package:get/get.dart';
import 'package:inventory/core/model/product/product_database_model.dart';
import 'package:inventory/core/model/sales/sales_database_model.dart';
import 'package:inventory/sales_report/controller/sales_report_controller.dart';
import 'package:inventory/sales_report/model/sales_report_model.dart';
import 'package:isar/isar.dart';

onSalesReportDateSelectionSaveButtonPressed() {
  SalesReportController salesReportController = Get.find();
  final Isar _isar = Get.find();
  salesReportController.salesReportModels.clear();
  _isar.salesDatabaseModels
      .filter()
      .salesDateBetween(
      salesReportController.startDate!, salesReportController.endDate!)
      .findAllSync().forEach((element) {
    salesReportController.salesReportModels.add(SalesReportModel(
      salesDate: element.salesDate,
      quantity: element.quantity,
      productName:
      _isar.productDatabaseModels
          .filter()
          .productIdEqualTo(element.productId)
          .findFirstSync()!
          .productName,
      totalCost: 99,
      totalPrice: 99,
    ));
  });
salesReportController.update();
Get.back();
}