import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

class AddProductTitleWithTextField extends StatelessWidget {
  final String title;
  final String currentRoute;

  AddProductTitleWithTextField(
      {super.key, required this.title, required this.currentRoute});

  final List<String> readOnlyItems = [categoryN, uomSN];
  final List<String> suffixItems = [quantityOnHandN, reorderQuantityN];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800),
            ),
          ),
        ),
        sizedBox(width: 5),
        Expanded(
          child: Center(
            child: CustomTextField(
              title: title,
              // labelText: descriptionN,
            ),
          ),
        ),
      ],
    );
  }
}
