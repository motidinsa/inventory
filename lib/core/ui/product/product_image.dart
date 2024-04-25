import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';

class ProductImage extends StatelessWidget {
  final int id;
  final String currentRoute;
  final String? localImagePath;
  final double imageWidth;

  const ProductImage(
      {super.key,
      this.localImagePath,
      required this.id,
      required this.currentRoute,
      this.imageWidth = 50});

  @override
  Widget build(BuildContext context) {
    return localImagePath != null
        ? SizedBox(
            width: 60,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: smoothBorderRadius(radius: 12),
                  child: Image.file(
                    File(localImagePath!),
                    width: imageWidth,
                  ),
                ),
              ],
            ),
          )
        : Container(
            width: 60,
            padding: const EdgeInsets.only(top: 10),
            child: const Text(
              noImageN,
              style: TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
          );
  }
}
