import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/purchase_report/controller/purchase_report_controller.dart';
import 'package:my_inventory/sales_report/controller/sales_report_controller.dart';

import '../../../payment_report/controller/payment_report_controller.dart';

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

String getFirstData({required int index}) {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesReportN) {
    return DateFormat('MMM d')
        .format(SalesReportController.to.salesReportModels[index].salesDate);
  } else if (currentPage == purchaseReportN) {
    return DateFormat('MMM d').format(
        PurchaseReportController.to.purchaseReportModels[index].purchaseDate);
  } else if (currentPage == paymentReportN) {
    return DateFormat('MMM d').format(
        PaymentReportController.to.paymentReportModels[index].paymentDate);
  }
  return '';
}

String getSecondData({required int index}) {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesReportN) {
    return SalesReportController.to.salesReportModels[index].productName;
  } else if (currentPage == purchaseReportN) {
    return PurchaseReportController.to.purchaseReportModels[index].productName;
  } else if (currentPage == paymentReportN) {
    return PaymentReportController.to.paymentReportModels[index].customerName;
  }

  return '';
}

String getThirdData({required int index}) {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesReportN) {
    return getFormattedNumberWithComa(
        SalesReportController.to.salesReportModels[index].quantity);
  } else if (currentPage == purchaseReportN) {
    return getFormattedNumberWithComa(
        PurchaseReportController.to.purchaseReportModels[index].quantity);
  } else if (currentPage == paymentReportN) {
    return getFormattedNumberWithComa(
        PaymentReportController.to.paymentReportModels[index].cash);
  }
  return '';
}

String getFourthData({required int index}) {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesReportN) {
    return getFormattedNumberWithComa(
        SalesReportController.to.salesReportModels[index].totalCost);
  } else if (currentPage == purchaseReportN) {
    return getFormattedNumberWithComa(
        PurchaseReportController.to.purchaseReportModels[index].unitCost);
  } else if (currentPage == paymentReportN) {
    return getFormattedNumberWithComa(
        PaymentReportController.to.paymentReportModels[index].transfer);
  }
  return '';
}

String getFifthData({required int index}) {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesReportN) {
    return getFormattedNumberWithComa(
        SalesReportController.to.salesReportModels[index].totalPrice);
  } else if (currentPage == purchaseReportN) {
    return getFormattedNumberWithComa(
        PurchaseReportController.to.purchaseReportModels[index].totalCost);
  } else if (currentPage == paymentReportN) {
    return getFormattedNumberWithComa(
        PaymentReportController.to.paymentReportModels[index].credit);
  }
  return '';
}

String getSixthData({required int index}) {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesReportN) {
    return getFormattedNumberWithComa(
        SalesReportController.to.salesReportModels[index].totalPrice -
            SalesReportController.to.salesReportModels[index].totalCost);
  } else if (currentPage == paymentReportN) {
    return getFormattedNumberWithComa(
        PaymentReportController.to.paymentReportModels[index].total);
  }
  return '';
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

String? getReportSelectedDate({required String title}) {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesReportN) {
    if (title == fromN && SalesReportController.to.startDate != null) {
      return DateFormat('dd/MM/yy').format(SalesReportController.to.startDate!);
    } else if (title == toN && SalesReportController.to.endDate != null) {
      return DateFormat('dd/MM/yy').format(SalesReportController.to.endDate!);
    }
  } else {
    if (title == fromN && PurchaseReportController.to.startDate != null) {
      return DateFormat('dd/MM/yy')
          .format(PurchaseReportController.to.startDate!);
    } else if (title == toN && PurchaseReportController.to.endDate != null) {
      return DateFormat('dd/MM/yy')
          .format(PurchaseReportController.to.endDate!);
    }
  }
  return null;
}

onFilterSelect() {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesReportN) {
    final SalesReportController salesReportController = Get.find();

    salesReportController.displayStartDate = salesReportController.startDate;
    salesReportController.displayEndDate = salesReportController.endDate;
    salesReportController.onSalesReportFilterPressed();
  } else {
    final PurchaseReportController purchaseReportController = Get.find();

    purchaseReportController.displayStartDate =
        purchaseReportController.startDate;
    purchaseReportController.displayEndDate = purchaseReportController.endDate;
    purchaseReportController.onPurchaseReportFilterPressed();
  }
}

onReportFilterSelect({required String title}) {
  showDatePicker(
    context: Get.context!,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
  ).then((value) {
    if (value != null) {
      String currentPage = AppController.to.currentPages.last;
      if (currentPage == salesReportN) {
        if (title == fromN) {
          SalesReportController.to.startDate = value;
        } else {
          SalesReportController.to.endDate = value;
        }
        SalesReportController.to.update();
      } else {
        if (title == fromN) {
          PurchaseReportController.to.startDate = value;
        } else {
          PurchaseReportController.to.endDate = value;
        }
        PurchaseReportController.to.update();
      }
    }
  });
}

getFirstHeaderElement() {}
