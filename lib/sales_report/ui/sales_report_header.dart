import 'package:flutter/material.dart';
import 'package:my_inventory/sales_report/constants/sales_report_constants.dart';

import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';

class SalesReportHeader extends StatelessWidget {
  const SalesReportHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 0,
      ),
      shape: smoothRectangleBorder(
          radius: 0,
          side: const BorderSide(
            color: Colors.green,
            width: 1.5,
          )),
      elevation: 4,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(
          children: [
            SizedBox(
              width: dateWidthSR,
              child: Text(
                'Date',
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
                'Item',
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
                'Qty',
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
                'T.cost',
                textAlign: TextAlign.center,
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
                'T.price',
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
                'Profit',
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
