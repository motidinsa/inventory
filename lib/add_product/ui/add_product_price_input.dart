import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';

import 'package:my_inventory/core/constants/name_constants.dart';

class AddProductPriceInput extends StatelessWidget {
  final String title;

  const AddProductPriceInput({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: bold(),
            fontSize: 16,
          ),
        ),
        sizedBox(width: 10),
        Expanded(
          child: ProductTextField(
            title: title,
            currentPage: addProductN(),
          ),
        ),
      ],
    );
  }
}
