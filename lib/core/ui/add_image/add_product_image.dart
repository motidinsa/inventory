import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/functions/product/product_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';

class AddProductImage extends StatelessWidget {
  final String currentRoute;

  const AddProductImage({super.key, required this.currentRoute});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          imageN.capitalizeFirst!,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: bold(), fontSize: 16, color: Colors.grey.shade800),
        ),
        sizedBox(width: 40),
        Obx(() {
          if (getProductImagePath() != null) {
            return Column(
              children: [
                ClipRRect(
                  borderRadius: smoothBorderRadius(radius: 15),
                  child: Image.file(
                    File(getProductImagePath()),
                    width: 120,
                  ),
                ),
                sizedBox(height: 5),
                Row(
                  children: [
                    TextButton(
                      onPressed: () => onImageDeleteButtonPressed(),
                      style: TextButton.styleFrom(foregroundColor: Colors.red),
                      child: const Text(
                        deleteN,
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    TextButton(
                      onPressed: () => onAddImagePressed(),
                      child: const Text(
                        changeN,
                        // style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                )
              ],
            );
          }
          return ElevatedButton(
            onPressed: () => onAddImagePressed(),
            style: ElevatedButton.styleFrom(
              shape: smoothRectangleBorder(radius: 12),
              padding: const EdgeInsets.all(16),
              backgroundColor: Colors.green.shade50,
            ),
            child: const Column(
              children: [Icon(Icons.add), Text('Add image')],
            ),
          );
        })

        // }),
      ],
    );
  }
}
