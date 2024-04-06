import 'package:flutter/material.dart';
import 'package:my_inventory/core/styles/styles.dart';

import 'package:my_inventory/core/functions/report/report_functions.dart';

class PaymentReportHeader extends StatelessWidget {
  const PaymentReportHeader({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
        child: Row(
          children: [
            SizedBox(
              width: getReportFirstWidth(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: purchaseSpacing),
                child: Text(
                  'Date',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: bold(),
                      fontSize: 16,
                      color: Colors.grey.shade800),
                ),
              ),
            ),
            // sizedBox(width: spacingWidthR),
            SizedBox(
              width: getReportSecondWidth(),
              child: Padding(
                padding: const EdgeInsets.only(right: purchaseSpacing),
                child: Text(
                  'Customer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: bold(),
                      fontSize: 16,
                      color: Colors.grey.shade800),
                ),
              ),
            ),
            // sizedBox(width: spacingWidthR),
            SizedBox(
              width: getReportThirdWidth(),
              child: Padding(
                padding: const EdgeInsets.only(right: purchaseSpacing),
                child: Text(
                  'Cash',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: bold(),
                      fontSize: 16,
                      color: Colors.grey.shade800),
                ),
              ),
            ),
            // sizedBox(width: spacingWidthR),
            SizedBox(
              width: getReportFourthWidth(),
              child: Padding(
                padding: const EdgeInsets.only(right: purchaseSpacing),
                child: Text('Transfer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: bold(),
                      fontSize: 16,
                      color: Colors.grey.shade800),
                ),
              ),
            ),
            // sizedBox(width: spacingWidthR),
            SizedBox(
              width: getReportFifthWidth(),
              child: Padding(
                padding: const EdgeInsets.only(right: purchaseSpacing),
                child: Text('Credit',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: bold(),
                      fontSize: 16,
                      color: Colors.grey.shade800),
                ),
              ),
            ),SizedBox(
              width: getReportSixthWidth(),
              child: Padding(
                padding: const EdgeInsets.only(right: purchaseSpacing),
                child: Text('Total',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: bold(),
                      fontSize: 16,
                      color: Colors.grey.shade800),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
