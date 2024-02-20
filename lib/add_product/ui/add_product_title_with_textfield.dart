import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';

class AddProductTitleWithTextfield extends StatelessWidget {
  final String title;

  AddProductTitleWithTextfield({
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
        Expanded(
          child: Center(
            child: ProductTextField(
              hintText: title == productIdN()
                  ? idN()
                  : !suffixItems.contains(title)
                      ? selectItemN()
                      : '',
              minimizePadding: true,
              hasOptions: true,
              // labelText: descriptionN(),
            ),
          ),
        ),
      ],
    );
  }
}
