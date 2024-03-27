import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/sales_report/constants/sales_report_constants.dart';

import '../model/purchase_report_model.dart';

class PurchaseReportData extends StatelessWidget {
  final PurchaseReportModel purchaseReportModel;

  const PurchaseReportData({super.key, required this.purchaseReportModel});

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
                DateFormat('MMM d').format(purchaseReportModel.purchaseDate),
                textAlign: TextAlign.center,
                style: TextStyle(
                    // fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthSR),
            SizedBox(
              width: itemWidthSR,
              child: Text(
                purchaseReportModel.productName,
                textAlign: TextAlign.center,
                style: TextStyle(
                    // fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthSR),
            SizedBox(
              width: qtyWidthSR,
              child: Text(
                getFormattedNumberWithComa(purchaseReportModel.quantity),
                textAlign: TextAlign.center,
                style: TextStyle(
                    // fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthSR),
            SizedBox(
              width: totalCostWidthSR,
              child: Text(
                getFormattedNumberWithComa(purchaseReportModel.unitCost),
                textAlign: TextAlign.center,
                // overflow: TextOverflow.fade,
                style: TextStyle(
                    // fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthSR),
            SizedBox(
              width: totalPriceWidthSR,
              child: Text(
                getFormattedNumberWithComa(purchaseReportModel.totalCost),
                textAlign: TextAlign.center,
                style: TextStyle(
                    // fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
