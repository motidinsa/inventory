import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';


import 'package:my_inventory/core/functions/core_functions.dart';

class AddProductImage extends StatelessWidget {
  AddProductImage({super.key});

  final AddProductController addProductController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Image\n(Optional)',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: bold(), fontSize: 16, color: Colors.grey.shade600),
        ),
        sizedBox(width: 20),
        Obx(() {
          if (addProductController.productInfo.value.localImagePath != null) {
            return Column(
              children: [
                ClipRRect(
                  borderRadius: smoothBorderRadius(radius: 15),
                  child: Image.file(
                    File(
                        addProductController.productInfo.value.localImagePath!),
                    width: 120,
                  ),
                ),
                sizedBox(height: 5),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        addProductController.productInfo.update((val) {
                          val?.localImagePath = null;
                        });
                      },
                      style: TextButton.styleFrom(foregroundColor: Colors.red),
                      child: const Text(
                        deleteN,
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    TextButton(
                      onPressed: () => onAddImagePressed(
                          context: context, currentPage: addProductN()),
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
            onPressed: () =>
                onAddImagePressed(context: context, currentPage: addProductN()),
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
