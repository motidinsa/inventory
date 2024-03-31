import 'package:flutter/material.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';

class PurchaseReportSummary extends StatelessWidget {
  final double totalCost;

  const PurchaseReportSummary({
    super.key,
    required this.totalCost,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        surfaceTintColor: Colors.white,
        shape: smoothRectangleBorder(
            radius: 15, side: const BorderSide(color: Colors.green, width: .5)),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Total cost: ',
                  style: TextStyle(
                      fontWeight: bold(),
                      fontSize: 19,
                      color: Colors.grey.shade800,
                      fontStyle: FontStyle.italic),
                  // style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: getFormattedNumberWithComa(
                        totalCost,
                      ),
                      style: TextStyle(color: Colors.green.shade800),
                    ),
                    // TextSpan(text: ' world!'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
