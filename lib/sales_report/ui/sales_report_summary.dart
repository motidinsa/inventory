import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';

import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';

class SalesReportSummary extends StatelessWidget {
  final double subtotal;
  final double discount;
  const SalesReportSummary(
      {super.key, required this.subtotal, required this.discount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Card(
        surfaceTintColor: Colors.white,
        shape: smoothRectangleBorder(
            radius: 15, side: const BorderSide(color: Colors.green, width: .5)),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profit',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.green.shade800),
              ),
              sizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: '$subtotalN: ',
                  style: TextStyle(
                      fontWeight: bold(),
                      fontSize: 18,
                      color: Colors.grey.shade800,
                      fontStyle: FontStyle.italic),
                  // style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: getFormattedNumberWithComa(
                        subtotal,
                      ),
                      style: TextStyle(color: Colors.green.shade800),
                    ),
                    // TextSpan(text: ' world!'),
                  ],
                ),
              ),
              sizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: '$discountN: ',
                  style: TextStyle(
                      fontWeight: bold(),
                      fontSize: 18,
                      color: Colors.red.shade600,
                      fontStyle: FontStyle.italic),
                  // style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: getFormattedNumberWithComa(
                        discount,
                      ),
                      style: TextStyle(color: Colors.red.shade600),
                    ),
                    // TextSpan(text: ' world!'),
                  ],
                ),
              ),
              sizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: '$totalN: ',
                  style: TextStyle(
                    fontWeight: bold(),
                    fontSize: 18,
                    color: Colors.grey.shade800,
                    fontStyle: FontStyle.italic,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: getFormattedNumberWithComa(subtotal - discount),
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
