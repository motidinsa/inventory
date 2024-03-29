import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/purchase_report/controller/purchase_report_controller.dart';
import 'package:my_inventory/sales_report/controller/sales_report_controller.dart';

const List<double> purchaseWidthRatio = [0.2, 0.28, 0.12, 0.2, 0.2];
const List<double> salesWidthRatio = [0.17, 0.2, 0.1, 0.18, 0.19, 0.16];
const double purchaseSpacing = 3;

double getReportWidth() {
  // if (AppController.to.currentPages.last == salesReportN) {
  //   return dateWidthR +
  //       itemWidthR +
  //       qtyWidthR +
  //       totalCostWidthR +
  //       totalPriceWidthR +
  //       profitR +
  //       spacingWidthR * 5 +
  //       20;
  // }
  return Get.mediaQuery.size.width;
  // return dateWidthR +
  //     itemWidthR +
  //     qtyWidthR +
  //     totalCostWidthR +
  //     totalPriceWidthR +
  //     spacingWidthR * 4 +
  //     20;
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

double getReportDateWidth() {
  return AppController.to.currentPages.last == purchaseReportN
      ? Get.mediaQuery.size.width * purchaseWidthRatio[0]
      : Get.mediaQuery.size.width * salesWidthRatio[0];
}

double getReportItemWidth() {
  return AppController.to.currentPages.last == purchaseReportN
      ? Get.mediaQuery.size.width * purchaseWidthRatio[1]
      : Get.mediaQuery.size.width * salesWidthRatio[1];
}

double getReportQtyWidth() {
  return AppController.to.currentPages.last == purchaseReportN
      ? Get.mediaQuery.size.width * purchaseWidthRatio[2]
      : Get.mediaQuery.size.width * salesWidthRatio[2];
}

double getReportCostWidth() {
  return AppController.to.currentPages.last == purchaseReportN
      ? Get.mediaQuery.size.width * purchaseWidthRatio[3]
      : Get.mediaQuery.size.width * salesWidthRatio[3];
}

double getReportPriceWidth() {
  return AppController.to.currentPages.last == purchaseReportN
      ? Get.mediaQuery.size.width * purchaseWidthRatio[4]
      : Get.mediaQuery.size.width * salesWidthRatio[4];
}

double getReportProfitWidth() {
  return AppController.to.currentPages.last == purchaseReportN
      ? Get.mediaQuery.size.width * purchaseWidthRatio[5]
      : Get.mediaQuery.size.width * salesWidthRatio[5];
}
