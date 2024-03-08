import 'dart:io';

import 'package:flutter/material.dart';

import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';

class ProductImage extends StatelessWidget {
  final String productId;
  final String currentPage;
  final String? localImagePath;

  const ProductImage(
      {super.key,
      this.localImagePath,
      required this.productId,
      required this.currentPage});

  final double imageWidth = 100;

  @override
  Widget build(BuildContext context) {
    return localImagePath != null
        ? ClipRRect(
            borderRadius: smoothBorderRadius(radius: 12),
            child: Image.file(
              File(localImagePath!),
              width: imageWidth,
            ),
          )
        : Container(
            width: imageWidth,
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  noImageFoundN,
                  style: TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
               if(currentPage!=productDetailN) TextButton(
                  onPressed: () => onAddImagePressed(
                    context: context,
                    currentPage: currentPage,
                    productId: productId,
                  ),
                  style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                  child: const Text(addImageN),
                ),
              ],
            ),
          );
  }
}
