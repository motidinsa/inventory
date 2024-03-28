import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/functions/report_functions.dart';
import 'package:my_inventory/sales_report/constants/sales_report_constantnctions.dart';

class ReportData extends StatelessWidget {
  final int index;

  const ReportData({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 0,
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: dateWidthSR,
              child: Text(
                getReportDate(index: index),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
            sizedBox(width: spacingWidthSR),
            SizedBox(
              width: itemWidthSR,
              child: Text(
                getReportItem(index: index),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17, color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthSR),
            SizedBox(
              width: qtyWidthSR,
              child: Text(
                getReportQty(index: index),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17, color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthSR),
            SizedBox(
              width: totalCostWidthSR,
              child: Text(
                getReportCost(index: index),
                textAlign: TextAlign.center,
                // overflow: TextOverflow.fade,
                style: TextStyle(fontSize: 17, color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthSR),
            SizedBox(
              width: totalPriceWidthSR,
              child: Text(
                getReportPrice(index: index),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17, color: Colors.grey.shade800),
              ),
            ),
            if (AppController.to.currentPages.last == salesReportN) ...[
              sizedBox(width: spacingWidthSR),
              SizedBox(
                width: profitSR,
                child: Text(
                  getReportProfit(index: index),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ],
        ),
      ),
    );
  }
}
