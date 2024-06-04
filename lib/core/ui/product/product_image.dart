import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';

import '../../functions/image/image_functions.dart';

class ProductImage extends StatelessWidget {
  final String  productId;
  final String? localImagePath;
  final double imageWidth;

  const ProductImage(
      {super.key,
      this.localImagePath,
      required this.productId,
      this.imageWidth = 50});

  @override
  Widget build(BuildContext context) {
    return localImagePath != null
        ? imageExists(
            imagePath: localImagePath!,id:productId
          )
            ? SizedBox(
                width: 60,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.file(
                      File(localImagePath!),
                      width: imageWidth,
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
