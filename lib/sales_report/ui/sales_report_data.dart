import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/sales_report/constants/sales_report_constants.dart';
import 'package:my_inventory/sales_report/model/sales_report_model.dart';

import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';

class SalesReportData extends StatelessWidget {
  final SalesReportModel salesReportModel;

  const SalesReportData({super.key, required this.salesReportModel});

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
                DateFormat('dd/MM/yyyy').format(salesReportModel.salesDate),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthSR),
            SizedBox(
              width: itemWidthSR,
              child: Text(
                salesReportModel.productName,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthSR),
            SizedBox(
              width: qtyWidthSR,
              child: Text(
                getFormattedNumberWithComa(salesReportModel.quantity),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthSR),
            SizedBox(
              width: totalCostWidthSR,
              child: Text(
                getFormattedNumberWithComa(salesReportModel.totalCost),
                textAlign: TextAlign.center,
                // overflow: TextOverflow.fade,
                style: TextStyle(
                    fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthSR),
            SizedBox(
              width: totalPriceWidthSR,
              child: Text(
                getFormattedNumberWithComa(salesReportModel.totalPrice),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthSR),
            SizedBox(
              width: profitSR,
              child: Text(
                getFormattedNumberWithComa(
                    salesReportModel.totalPrice - salesReportModel.totalCost),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: bold(),
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
