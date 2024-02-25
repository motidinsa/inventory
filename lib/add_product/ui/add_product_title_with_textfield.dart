import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';

class AddProductTitleWithTextField extends StatelessWidget {
  final String title;

  AddProductTitleWithTextField({
    super.key,
    required this.title,
  });

  final List<String> readOnlyItems = [categoryN(), uomN()];
  final List<String> suffixItems = [quantityOnHandN(), reorderQuantityN()];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        sizedBox(width: 5),
        Expanded(
          child: Center(
            child: ProductTextField(
              title: title,
              currentPage: addProductN(),
              // labelText: descriptionN(),
            ),
          ),
        ),
      ],
    );
  }
}
