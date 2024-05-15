import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';

import 'package:my_inventory/core/routes/route_names.dart';

class ProductTableTitles extends StatelessWidget {
  final String currentRoute;

  const ProductTableTitles({super.key, required this.currentRoute});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      shape: smoothRectangleBorder(
          radius: 12,
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
              flex: 8,
              child: Text(
                'Product',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: bold(),
                    fontSize: 17,
                    color: Colors.grey.shade800),
              ),
            ),
            sizedBox(width: 10),
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
            sizedBox(width: 10),
            Expanded(
              flex: currentRoute == RouteName.addPurchase ? 4 : 3,
              child: Text(
                currentRoute == RouteName.sales ? 'Price' : 'Cost',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
