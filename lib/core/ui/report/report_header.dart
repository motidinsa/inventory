import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';

import 'package:my_inventory/core/constants/report_constants.dart';

class ReportHeader extends StatelessWidget {
  const ReportHeader({super.key});

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
              width: dateWidthR,
              child: Text(
                'Date',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthR),
            SizedBox(
              width: itemWidthR,
              child: Text(
                'Item',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthR),
            SizedBox(
              width: qtyWidthR,
              child: Text(
                'Qty',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthR),
            SizedBox(
              width: totalCostWidthR,
              child: Text(
                AppController.to.currentPages.last == salesReportN
                    ? 'T.cost'
                    : 'U.cost',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: spacingWidthR),
            SizedBox(
              width: totalPriceWidthR,
              child: Text(
                AppController.to.currentPages.last == salesReportN
                    ? 'T.price'
                    : 'T.cost',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            if (AppController.to.currentPages.last == salesReportN) ...[
              sizedBox(width: spacingWidthR),
              SizedBox(
                width: profitR,
                child: Text(
                  'Profit',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: bold(),
                      fontSize: 17,
                      color: Colors.grey.shade800),
                ),
              )
            ],
          ],
        ),
      ),
    );
  }
}
