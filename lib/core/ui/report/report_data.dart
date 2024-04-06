import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/report/report_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';

class ReportData extends StatelessWidget {
  final int index;

  const ReportData({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 0,
      ),
      shape: smoothRectangleBorder(radius: 0),
      color: index.isOdd ? Colors.grey.shade200 : Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: getReportDateWidth(),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: purchaseSpacing),
                child: Text(
                  getFirstData(index: index),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            // sizedBox(width: spacingWidthR),
            SizedBox(
              width: getReportItemWidth(),
              child: Padding(
                padding: const EdgeInsets.only(right: purchaseSpacing),
                child: Text(
                  getSecondData(index: index),
                  // 'fjreiuf freifre fref',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
                ),
              ),
            ),
            // sizedBox(width: spacingWidthR),
            SizedBox(
              width: getReportQtyWidth(),
              child: Padding(
                padding: const EdgeInsets.only(right: purchaseSpacing),
                child: Text(
                  getThirdData(index: index),
                  // '992',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
                ),
              ),
            ),
            // sizedBox(width: spacingWidthR),
            SizedBox(
              width: getReportCostWidth(),
              child: Padding(
                padding: const EdgeInsets.only(right: purchaseSpacing),
                child: Text(
                  getFourthData(index: index),
                  // '999,999',
                  textAlign: TextAlign.center,
                  // overflow: TextOverflow.fade,
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
                ),
              ),
            ),
            // sizedBox(width: spacingWidthR),
            SizedBox(
              width: getReportPriceWidth(),
              child: Padding(
                padding: const EdgeInsets.only(right: purchaseSpacing),
                child: Text(
                  getFifthData(index: index),
                  // '999,999',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
            ),
            if ([salesReportN, paymentReportN]
                .contains(AppController.to.currentPages.last)) ...[
              // sizedBox(width: spacingWidthR),
              SizedBox(
                width: getReportProfitWidth(),
                child: Padding(
                  padding: const EdgeInsets.only(right: purchaseSpacing),
                  child: Text(
                    getSixthData(index: index),
                    // '99,999',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.bold,
                    ),
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
