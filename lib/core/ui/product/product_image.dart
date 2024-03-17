import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';

class ProductImage extends StatelessWidget {
  final String productId;
  final String currentPage;
  final String? localImagePath;
  final double imageWidth;

  const ProductImage(
      {super.key,
      this.localImagePath,
      required this.productId,
      required this.currentPage,
      this.imageWidth = 75});

  @override
  Widget build(BuildContext context) {
    return localImagePath != null
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: smoothBorderRadius(radius: 12),
                child: Image.file(
                  File(localImagePath!),
                  width: imageWidth,
                ),
              ),
            ],
          )
        : Container(
            width: 100,
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  noImageFoundN,
                  style: TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
                if (currentPage != productDetailN)
                  TextButton(
                    onPressed: () => onAddImagePressed(
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
