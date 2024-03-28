import 'package:flutter/material.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

class AddProductPriceInput extends StatelessWidget {
  final String title;

  const AddProductPriceInput(
      {super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Text(
        //   title,
        //   style: TextStyle(
        //       fontWeight: bold(), fontSize: 16, color: Colors.grey.shade800),
        // ),
        // sizedBox(width: 10),
        Expanded(
          child: CustomTextField(
            title: title,
            labelText: title,
          ),
        ),
      ],
    );
  }
}
