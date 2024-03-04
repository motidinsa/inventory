import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';

class ProductTableTitles extends StatelessWidget {
  final String currentPage;

  const ProductTableTitles({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Card(
      // horizontalMargin: 10,
      // verticalMargin: 10,
      // blurRadius: 10,
      // horizontalPadding: 20,
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 6),
      shape: smoothRectangleBorder(
          radius: 0,
          side: const BorderSide(
            color: Colors.green,
            width: 1.5,
          )),
      // elevation: 3,
      color: Colors.green.shade50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(
          children: [
            Expanded(
              flex: 9,
              child: Text(
                'Product',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: 15),
            Expanded(
                flex: 3,
                child: Text(
                  'Qty',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: bold(),
                      fontSize: 17,
                      color: Colors.grey.shade800),
                )),
            sizedBox(width: 15),
            Expanded(
              flex: currentPage == purchaseN() ? 4 : 3,
              child: Text(
                currentPage == salesN() ? 'Price' : 'Cost',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: 15),
            Expanded(
                flex: 3,
                child: Text(
                  'Total',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: bold(),
                      fontSize: 17,
                      color: Colors.grey.shade800),
                )),
          ],
        ),
      ),
    );
  }
}
