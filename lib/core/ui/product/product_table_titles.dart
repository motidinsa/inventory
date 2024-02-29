import 'package:flutter/material.dart';

import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';

class ProductTableTitles extends StatelessWidget {
  final String currentPage;
  const ProductTableTitles({super.key,required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const Expanded(
            flex: 9,
            child: Text(
              'Product',
              textAlign: TextAlign.center,
            ),
          ),
          sizedBox(width: 15),
          const Expanded(
              flex: 3,
              child: Text(
                'Qty',
                textAlign: TextAlign.center,
              )),
          sizedBox(width: 15),
           Expanded(
            flex:currentPage==purchaseN()?4: 3,
            child: const Text(
              'Price',
              textAlign: TextAlign.center,
            ),
          ),
          sizedBox(width: 15),
          const Expanded(
              flex: 3,
              child: Text(
                'Total',
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}
