import 'package:flutter/material.dart';

import 'package:my_inventory/add_product/functions/add_product_functions.dart';

class AlertDialogOptionItem extends StatelessWidget {
  final String title;
  final String itemName;

  const AlertDialogOptionItem({
    super.key,
    required this.itemName,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          itemName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
      ),
      titleAlignment: ListTileTitleAlignment.center,
      onTap: () => onAddProductAlertDialogOptionSelect(
        title: title,
        data: itemName,
      ),
    );
  }
}
