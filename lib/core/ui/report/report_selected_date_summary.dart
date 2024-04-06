import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';

import 'package:my_inventory/core/styles/styles.dart';

class ReportSelectedDateSummary extends StatelessWidget {
  final DateTime startDate;
  final DateTime endDate;

  const ReportSelectedDateSummary(
      {super.key, required this.startDate, required this.endDate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: '$fromN:  ',
              style: TextStyle(
                fontWeight: bold(),
                fontSize: 18,
                color: Colors.grey.shade700,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: DateFormat('dd/MM/yyyy').format(startDate),
                  style: TextStyle(
                      color: Colors.green.shade800,
                      fontStyle: FontStyle.italic,
                      fontWeight: bold(),
                      fontSize: 17),
                ),
              ],
            ),
          ),
          sizedBox(height: 10),
          RichText(
            text: TextSpan(
              text: '$toN:  ',
              style: TextStyle(
                fontWeight: bold(),
                fontSize: 18,
                color: Colors.grey.shade700,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: DateFormat('dd/MM/yyyy').format(endDate),
                  style: TextStyle(
                      color: Colors.green.shade800,
                      fontStyle: FontStyle.italic,
                      fontWeight: bold(),
                      fontSize: 17),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
