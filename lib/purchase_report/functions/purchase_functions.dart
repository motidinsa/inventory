import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/sales_report/constants/sales_report_constants.dart';

getTableWidth() {
  String currentPage = AppController.to.currentPages.last;
  if (currentPage == salesReportN) {
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
