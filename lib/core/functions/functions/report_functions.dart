import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/purchase_report/controller/purchase_report_controller.dart';
import 'package:my_inventory/sales_report/controller/sales_report_controller.dart';

import 'package:my_inventory/sales_report/constants/sales_report_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';

double getReportWidth() {
  if (AppController.to.currentPages.last == salesReportN) {
    return dateWidthSR +
        itemWidthSR +
        qtyWidthSR +
        totalCostWidthSR +
        totalPriceWidthSR +
        profitSR +
        spacingWidthSR * 5 +
        20;
  }
  return dateWidthSR +
      itemWidthSR +
      qtyWidthSR +
      totalCostWidthSR +
      totalPriceWidthSR +
      spacingWidthSR * 4 +
      20;
}

String getReportDate({required int index}) {
  if (AppController.to.currentPages.last == salesReportN) {
    return DateFormat('MMM d')
        .format(SalesReportController.to.salesReportModels[index].salesDate);
  }
  return DateFormat('MMM d').format(
      PurchaseReportController.to.purchaseReportModels[index].purchaseDate);
}

String getReportItem({required int index}) {
  if (AppController.to.currentPages.last == salesReportN) {
    return SalesReportController.to.salesReportModels[index].productName;
  }
  return PurchaseReportController.to.purchaseReportModels[index].productName;
}

String getReportQty({required int index}) {
  if (AppController.to.currentPages.last == salesReportN) {
    return getFormattedNumberWithComa(
        SalesReportController.to.salesReportModels[index].quantity);
  }
  return getFormattedNumberWithComa(
      PurchaseReportController.to.purchaseReportModels[index].quantity);
}

String getReportCost({required int index}) {
  if (AppController.to.currentPages.last == salesReportN) {
    return getFormattedNumberWithComa(
        SalesReportController.to.salesReportModels[index].totalCost);
  }
  return getFormattedNumberWithComa(
      PurchaseReportController.to.purchaseReportModels[index].unitCost);
}

String getReportPrice({required int index}) {
  if (AppController.to.currentPages.last == salesReportN) {
    return getFormattedNumberWithComa(
        SalesReportController.to.salesReportModels[index].totalPrice);
  }
  return getFormattedNumberWithComa(
      PurchaseReportController.to.purchaseReportModels[index].totalCost);
}

String getReportProfit({required int index}) {
  return getFormattedNumberWithComa(
      SalesReportController.to.salesReportModels[index].totalPrice -
          SalesReportController.to.salesReportModels[index].totalCost);
}
