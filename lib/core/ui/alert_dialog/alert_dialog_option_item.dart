import 'package:flutter/material.dart';
import 'package:my_inventory/core/functions/alert_dialog/alert_dialog_functions.dart';


class AlertDialogOptionItem extends StatelessWidget {
  final String title;
  final String name;
  final String id;
  final int? index;
  // final ProductDatabaseModel? product;
  // final CategoryDatabaseModel? category;
  // final UnitOfMeasurementDatabaseModel? unitOfMeasurement;

  const AlertDialogOptionItem({
    super.key,
    required this.title,
    required this.name,
    this.index,
    required this.id,
    // this.unitOfMeasurement,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
      ),
      titleAlignment: ListTileTitleAlignment.center,
      onTap: () => onAlertDialogOptionSelect(
        title: title,
        index: index,
        data: name,
        // productModel: product,
        id: id,
      ),
    );
  }
}
