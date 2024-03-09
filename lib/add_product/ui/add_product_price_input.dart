import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';

class AddProductPriceInput extends StatelessWidget {
  final String title;
  final String currentPage;

  const AddProductPriceInput(
      {super.key, required this.title, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
              fontWeight: bold(), fontSize: 16, color: Colors.grey.shade800),
        ),
        sizedBox(width: 10),
        Expanded(
          child: ProductTextField(
            title: title,
            currentPage: currentPage,
          ),
        ),
      ],
    );
  }
}
