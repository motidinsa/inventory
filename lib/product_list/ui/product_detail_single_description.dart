import 'package:flutter/material.dart';
import 'package:my_inventory/core/functions/core_functions.dart';

import '../../core/styles/styles.dart';

class ProductDetailSingleDescription extends StatelessWidget {
  final String title;
  final String description;

  const ProductDetailSingleDescription({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$title:   ',
        style: TextStyle(
          fontWeight: bold(),
          fontSize: 16,
          color: Colors.grey.shade700,
        ),
        children: <TextSpan>[
          TextSpan(
            text: isNumeric(description)
                ? getFormattedNumber(double.parse(description))
                : description,
            style: TextStyle(
              color: Colors.grey.shade500,
              fontStyle: FontStyle.italic,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
