import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/purchase/purchase_all_database_model.dart';
import 'package:my_inventory/core/model/sales/sales_database_model.dart';
import 'package:my_inventory/core/model/sales/sales_payment_database_model.dart';
import 'package:my_inventory/main.dart';
import 'package:my_inventory/payment_report/model/payment_report_model.dart';
import 'package:my_inventory/purchase_report/model/purchase_report_model.dart';

class PaymentReportController extends GetxController {
  DateTime now = DateTime.now();
  List<PaymentReportModel> paymentReportModels = [];
  DateTime? startDate;
  DateTime? endDate;
  DateTime? displayStartDate;
  DateTime? displayEndDate;
  double totalCost = 0;

  static PaymentReportController get to => Get.find();

  @override
  void onInit() {
    AppController.to.currentPages.add(paymentReportN);
    for (var element in isar.salesPaymentDatabaseModels.where().findAllSync()) {
      paymentReportModels.add(
        PaymentReportModel(
          paymentDate: isar.salesDatabaseModels
              .filter()
              .groupSalesIdEqualTo(element.groupSalesId)
              .findFirstSync()!
              .salesDate,
          customerName: isar.customerDatabaseModels
              .filter()
              .customerIdEqualTo(element.customerId)
              .findFirstSync()!
              .name,
          cash: element.cash,
          credit: element.credit,
          transfer: element.transfer,
          total: element.total,
        ),
      );
      totalCost += element.total;
    }
    super.onInit();
  }

  onPurchaseReportFilterPressed() {
    paymentReportModels.clear();
    totalCost = 0;
    for (var element in isar.salesDatabaseModels
        .filter()
        .salesDateBetween(startDate!, endDate!.add(Duration(days: 1)),
            includeUpper: false)
        .sortBySalesDateDesc()
        .findAllSync()) {
      SalesPaymentDatabaseModel? salesPaymentDatabaseModel = isar
          .salesPaymentDatabaseModels
          .filter()
          .salesPaymentIdEqualTo(element.salesPaymentId)
          .findFirstSync();
      paymentReportModels.add(
        PaymentReportModel(
          paymentDate: element.salesDate,
          customerName: isar.customerDatabaseModels
              .filter()
              .customerIdEqualTo(element.customerId!)
              .findFirstSync()!
              .name,
          cash: salesPaymentDatabaseModel!.cash,
          credit: salesPaymentDatabaseModel.credit,
          transfer: salesPaymentDatabaseModel.transfer,
          total: salesPaymentDatabaseModel.total,
        ),
      );
      totalCost += salesPaymentDatabaseModel.total;
    }
    update();
  }
}
