import 'package:flutter/material.dart';
import 'package:my_inventory/add_product/functions/add_product_functions.dart';

import 'package:my_inventory/core/model/product/product_model.dart';

class AlertDialogOptionItem extends StatelessWidget {
  final String title;
  final String currentPage;
  final String? item;
  final int? index;
  final ProductModel? product;

  const AlertDialogOptionItem({
    super.key,
    this.item,
    required this.title,
    this.product,
    required this.currentPage,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          item ?? product!.name,
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
          data: item ?? product!.name,
          productModel: product),
    );
  }
}
