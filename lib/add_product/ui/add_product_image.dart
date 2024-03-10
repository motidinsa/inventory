import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';

import '../../core/functions/product/product_functions.dart';

class AddProductImage extends StatelessWidget {
  final String currentPage;
  const AddProductImage({super.key, required this.currentPage});

  // final AddProductController addProductController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          imageOptionalN,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: bold(), fontSize: 16, color: Colors.grey.shade600),
        ),
        sizedBox(width: 20),
        Obx(() {
          if (getProductImagePath(currentPage: currentPage) != null) {
            return Column(
              children: [
                ClipRRect(
                  borderRadius: smoothBorderRadius(radius: 15),
                  child: Image.file(
                    File(getProductImagePath(currentPage: currentPage)),
                    width: 120,
                  ),
                ),
                sizedBox(height: 5),
                Row(
                  children: [
                    TextButton(
                      onPressed: () =>
                          onImageDeleteButtonPressed(currentPage: currentPage),
                      style: TextButton.styleFrom(foregroundColor: Colors.red),
                      child: const Text(
                        deleteN,
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    TextButton(
                      onPressed: () =>
                          onAddImagePressed(currentPage: currentPage),
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
            onPressed: () => onAddImagePressed(currentPage: currentPage),
            style: ElevatedButton.styleFrom(
              shape: smoothRectangleBorder(radius: 12),
              padding: const EdgeInsets.all(16),
              backgroundColor: Colors.green.shade50,
            ),
            child: const Column(
              children: [Icon(Icons.add), Text('Add image')],
            ),
          );
        }),
      ],
    );
  }
}
