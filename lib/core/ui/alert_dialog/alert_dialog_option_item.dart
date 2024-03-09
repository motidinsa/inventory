import 'package:flutter/material.dart';
import 'package:my_inventory/core/functions/alert_dialog/alert_dialog_functions.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';

import '../../model/category/category_database_model.dart';

class AlertDialogOptionItem extends StatelessWidget {
  final String title;
  final String currentPage;
  final int? index;
  final ProductDatabaseModel? product;
  final CategoryDatabaseModel? category;

  const AlertDialogOptionItem(
      {super.key,
      required this.title,
      this.product,
      required this.currentPage,
      this.index,
      this.category});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          category?.categoryName ?? product!.productName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
      ),
      titleAlignment: ListTileTitleAlignment.center,
      onTap: () => onAlertDialogOptionSelect(
        currentPage: currentPage,
        title: title,
        index: index,
        data: category?.categoryName ?? product!.productName,
        productModel: product,
      ),
    );
  }
}
