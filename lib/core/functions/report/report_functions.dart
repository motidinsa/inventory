import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/purchase_report/controller/purchase_report_controller.dart';
import 'package:my_inventory/reorder_stock/controller/reorder_stock_controller.dart';
import 'package:my_inventory/sales_report/controller/sales_report_controller.dart';

import 'package:my_inventory/payment_report/controller/payment_report_controller.dart';

import 'package:my_inventory/inventory_report/controller/inventory_report_controller.dart';
import 'package:my_inventory/core/packages/custom_date_picker.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

const List<double> purchaseWidthRatio = [0.2, 0.28, 0.12, 0.2, 0.2];
const List<double> salesWidthRatio = [0.17, 0.2, 0.1, 0.18, 0.19, 0.16];
const List<double> reorderQtyWidthRatio = [0.1, 0.3, 0.3, 0.3];
const List<double> paymentReportWidthRatio = [
  0.16,
  0.2,
  0.16,
  0.16,
  0.16,
  0.16
];
const List<double> inventoryReportWidthRatio = [
  0.1,
  0.3,
  0.15,
  0.2,
  0.25,
];
// const List<double> reorderQtyWidthRatio =  [0.25, 0.25, 0.25, 0.25];
const double purchaseSpacing = 3;

double getReportWidth() {
  // if (Get.currentRoute == salesReportN) {
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
  String currentRoute = AppController.to.currentRoutes.last;
  if (currentRoute == salesReportN) {
    return DateFormat('MMM d')
        .format(SalesReportController.to.salesReportModels[index].salesDate);
  } else if (currentRoute == purchaseReportN) {
    return DateFormat('MMM d').format(
        PurchaseReportController.to.purchaseReportModels[index].purchaseDate);
  } else if (currentRoute == paymentReportN) {
    return DateFormat('MMM d').format(
        PaymentReportController.to.paymentReportModels[index].paymentDate);
  } else if ([reorderQuantityN, inventoryReportN].contains(currentRoute)) {
    return (index + 1).toString();
  }
  return '';
}

String getSecondData({required int index}) {
  String currentRoute = AppController.to.currentRoutes.last;
  if (currentRoute == salesReportN) {
    return SalesReportController.to.salesReportModels[index].productName;
  } else if (currentRoute == purchaseReportN) {
    return PurchaseReportController.to.purchaseReportModels[index].productName;
  } else if (currentRoute == paymentReportN) {
    return PaymentReportController.to.paymentReportModels[index].customerName;
  } else if (currentRoute == reorderQuantityN) {
    return ReorderStockController.to.productDatabaseModels[index].productName;
  } else if (currentRoute == inventoryReportN) {
    return InventoryReportController
        .to.productDatabaseModels[index].productName;
  }

  return '';
}

String getThirdData({required int index}) {
  String currentRoute = AppController.to.currentRoutes.last;
  if (currentRoute == salesReportN) {
    return getFormattedNumberWithComa(
        SalesReportController.to.salesReportModels[index].quantity);
  } else if (currentRoute == purchaseReportN) {
    return getFormattedNumberWithComa(
        PurchaseReportController.to.purchaseReportModels[index].quantity);
  } else if (currentRoute == paymentReportN) {
    return getFormattedNumberWithComa(
        PaymentReportController.to.paymentReportModels[index].cash);
  } else if (currentRoute == reorderQuantityN) {
    return getFormattedNumberWithComa(
        ReorderStockController.to.productDatabaseModels[index].reorderQuantity);
  } else if (currentRoute == inventoryReportN) {
    return getFormattedNumberWithComa(InventoryReportController
        .to.productDatabaseModels[index].quantityOnHand);
  }
  return '';
}

String getFourthData({required int index}) {
  String currentRoute = AppController.to.currentRoutes.last;
  if (currentRoute == salesReportN) {
    return getFormattedNumberWithComa(
        SalesReportController.to.salesReportModels[index].totalCost);
  } else if (currentRoute == purchaseReportN) {
    return getFormattedNumberWithComa(
        PurchaseReportController.to.purchaseReportModels[index].unitCost);
  } else if (currentRoute == paymentReportN) {
    return getFormattedNumberWithComa(
        PaymentReportController.to.paymentReportModels[index].transfer);
  } else if (currentRoute == reorderQuantityN) {
    return getFormattedNumberWithComa(
        ReorderStockController.to.productDatabaseModels[index].quantityOnHand);
  } else if (currentRoute == inventoryReportN) {
    return getFormattedNumberWithComa(InventoryReportController.to.productDatabaseModels[index].cost)
;
  }
  return '';
}

String getFifthData({required int index}) {
  String currentRoute = AppController.to.currentRoutes.last;
  if (currentRoute == salesReportN) {
    return getFormattedNumberWithComa(
        SalesReportController.to.salesReportModels[index].totalPrice);
  } else if (currentRoute == purchaseReportN) {
    return getFormattedNumberWithComa(
        PurchaseReportController.to.purchaseReportModels[index].totalCost);
  } else if (currentRoute == paymentReportN) {
    return getFormattedNumberWithComa(
        PaymentReportController.to.paymentReportModels[index].credit);
  } else if (currentRoute == inventoryReportN) {
    return getFormattedNumberWithComa(InventoryReportController
        .to.productDatabaseModels[index].quantityOnHand *
        InventoryReportController.to.productDatabaseModels[index].cost);
  }
  return '';
}

String getSixthData({required int index}) {
  String currentRoute = AppController.to.currentRoutes.last;
  if (currentRoute == salesReportN) {
    return getFormattedNumberWithComa(
        SalesReportController.to.salesReportModels[index].totalPrice -
            SalesReportController.to.salesReportModels[index].totalCost);
  } else if (currentRoute == paymentReportN) {
    return getFormattedNumberWithComa(
        PaymentReportController.to.paymentReportModels[index].total);
  }
  return '';
}

double getReportFirstWidth() {
  String currentRoute = AppController.to.currentRoutes.last;
  if (currentRoute == purchaseReportN) {
    return Get.mediaQuery.size.width * purchaseWidthRatio[0];
  } else if (currentRoute == salesReportN) {
    return Get.mediaQuery.size.width * salesWidthRatio[0];
  } else if (currentRoute == reorderQuantityN) {
    return Get.mediaQuery.size.width * reorderQtyWidthRatio[0];
  } else if (currentRoute == paymentReportN) {
    return Get.mediaQuery.size.width * paymentReportWidthRatio[0];
  } else if (currentRoute == reorderQuantityN) {
    return Get.mediaQuery.size.width * reorderQtyWidthRatio[0];
  } else if (currentRoute == inventoryReportN) {
    return Get.mediaQuery.size.width * inventoryReportWidthRatio[0];
  }
  return 0;
}

double getReportSecondWidth() {
  String currentRoute = AppController.to.currentRoutes.last;
  if (currentRoute == purchaseReportN) {
    return Get.mediaQuery.size.width * purchaseWidthRatio[1];
  } else if (currentRoute == salesReportN) {
    return Get.mediaQuery.size.width * salesWidthRatio[1];
  } else if (currentRoute == reorderQuantityN) {
    return Get.mediaQuery.size.width * reorderQtyWidthRatio[1];
  } else if (currentRoute == paymentReportN) {
    return Get.mediaQuery.size.width * paymentReportWidthRatio[1];
  } else if (currentRoute == reorderQuantityN) {
    return Get.mediaQuery.size.width * reorderQtyWidthRatio[1];
  } else if (currentRoute == inventoryReportN) {
    return Get.mediaQuery.size.width * inventoryReportWidthRatio[1];
  }
  return 0;
}

double getReportThirdWidth() {
  String currentRoute = AppController.to.currentRoutes.last;
  if (currentRoute == purchaseReportN) {
    return Get.mediaQuery.size.width * purchaseWidthRatio[2];
  } else if (currentRoute == salesReportN) {
    return Get.mediaQuery.size.width * salesWidthRatio[2];
  } else if (currentRoute == reorderQuantityN) {
    return Get.mediaQuery.size.width * reorderQtyWidthRatio[2];
  } else if (currentRoute == paymentReportN) {
    return Get.mediaQuery.size.width * paymentReportWidthRatio[2];
  } else if (currentRoute == reorderQuantityN) {
    return Get.mediaQuery.size.width * reorderQtyWidthRatio[2];
  } else if (currentRoute == inventoryReportN) {
    return Get.mediaQuery.size.width * inventoryReportWidthRatio[2];
  }
  return 0;
}

double getReportFourthWidth() {
  String currentRoute = AppController.to.currentRoutes.last;
  if (currentRoute == purchaseReportN) {
    return Get.mediaQuery.size.width * purchaseWidthRatio[3];
  } else if (currentRoute == salesReportN) {
    return Get.mediaQuery.size.width * salesWidthRatio[3];
  } else if (currentRoute == reorderQuantityN) {
    return Get.mediaQuery.size.width * reorderQtyWidthRatio[3];
  } else if (currentRoute == paymentReportN) {
    return Get.mediaQuery.size.width * paymentReportWidthRatio[3];
  } else if (currentRoute == reorderQuantityN) {
    return Get.mediaQuery.size.width * reorderQtyWidthRatio[3];
  } else if (currentRoute == inventoryReportN) {
    return Get.mediaQuery.size.width * inventoryReportWidthRatio[3];
  }
  return 0;
}

double getReportFifthWidth() {
  String currentRoute = AppController.to.currentRoutes.last;
  if (currentRoute == purchaseReportN) {
    return Get.mediaQuery.size.width * purchaseWidthRatio[4];
  } else if (currentRoute == salesReportN) {
    return Get.mediaQuery.size.width * salesWidthRatio[4];
  } else if (currentRoute == reorderQuantityN) {
    return Get.mediaQuery.size.width * reorderQtyWidthRatio[4];
  } else if (currentRoute == paymentReportN) {
    return Get.mediaQuery.size.width * paymentReportWidthRatio[4];
  } else if (currentRoute == inventoryReportN) {
    return Get.mediaQuery.size.width * inventoryReportWidthRatio[4];
  }
  return 0;
}

double getReportSixthWidth() {
  String currentRoute = AppController.to.currentRoutes.last;
  if (currentRoute == purchaseReportN) {
    return Get.mediaQuery.size.width * purchaseWidthRatio[5];
  } else if (currentRoute == salesReportN) {
    return Get.mediaQuery.size.width * salesWidthRatio[5];
  } else if (currentRoute == reorderQuantityN) {
    return Get.mediaQuery.size.width * reorderQtyWidthRatio[5];
  } else if (currentRoute == paymentReportN) {
    return Get.mediaQuery.size.width * paymentReportWidthRatio[5];
  }
  return 0;
}

String? getReportSelectedDate({required String title}) {
  String currentRoute = Get.currentRoute;
  if (currentRoute == RouteName.salesReport) {
    if (title == fromN && SalesReportController.to.startDate != null) {
      return DateFormat('dd/MM/yy').format(SalesReportController.to.startDate!);
    } else if (title == toN && SalesReportController.to.endDate != null) {
      return DateFormat('dd/MM/yy').format(SalesReportController.to.endDate!);
    }
  } else if (currentRoute == RouteName.purchaseReport) {
    if (title == fromN && PurchaseReportController.to.startDate != null) {
      return DateFormat('dd/MM/yy')
          .format(PurchaseReportController.to.startDate!);
    } else if (title == toN && PurchaseReportController.to.endDate != null) {
      return DateFormat('dd/MM/yy')
          .format(PurchaseReportController.to.endDate!);
    }
  } else if (currentRoute == RouteName.paymentReport) {
    if (title == fromN && PaymentReportController.to.startDate != null) {
      return DateFormat('dd/MM/yy')
          .format(PaymentReportController.to.startDate!);
    } else if (title == toN && PaymentReportController.to.endDate != null) {
      return DateFormat('dd/MM/yy').format(PaymentReportController.to.endDate!);
    }
  }
  return null;
}

onFilterSelect() {
  String currentRoute = AppController.to.currentRoutes.last;
  if (currentRoute == salesReportN) {
    final SalesReportController salesReportController = Get.find();

    salesReportController.displayStartDate = salesReportController.startDate;
    salesReportController.displayEndDate = salesReportController.endDate;
    salesReportController.onSalesReportFilterPressed();
  } else if (currentRoute == purchaseReportN) {
    final PurchaseReportController purchaseReportController = Get.find();

    purchaseReportController.displayStartDate =
        purchaseReportController.startDate;
    purchaseReportController.displayEndDate = purchaseReportController.endDate;
    purchaseReportController.onPurchaseReportFilterPressed();
  } else if (currentRoute == paymentReportN) {
    final PaymentReportController paymentReportController = Get.find();

    paymentReportController.displayStartDate =
        paymentReportController.startDate;
    paymentReportController.displayEndDate = paymentReportController.endDate;
    paymentReportController.onPaymentReportFilterPressed();
  }
}

onReportFilterSelect({required String title}) {
  showCustomDatePicker(
    context: Get.context!,
    title: title,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
  );
}

getFirstHeaderElement() {}
