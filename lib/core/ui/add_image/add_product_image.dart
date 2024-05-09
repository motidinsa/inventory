import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/functions/product/product_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';

class AddProductImage extends StatelessWidget {

  const AddProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          imageN.capitalizeFirst!,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.grey.shade700),
        ),
        SizedBox(width: 40),

          if (getProductImagePath() != null)
             Column(
              children: [
                ClipRRect(
                  borderRadius: smoothBorderRadius(radius: 15),
                  child: Image.file(
                    File(getProductImagePath()!),
                    width: 120,
                  ),
                ),
                SizedBox(height: 5),
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
                      ),
                    ),
                  ],
                )
              ],
            )

          else ElevatedButton(
            onPressed: () => onAddImagePressed(),
            style: ElevatedButton.styleFrom(
              shape: smoothRectangleBorder(radius: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              backgroundColor: Colors.green.shade50,
            ),
            child: Column(
              children: [
                Icon(
                  Icons.add,
                ),
                Text(
                  addImageN,
                )
              ],
            ),
          )

        // }),
      ],
    );
  }
}
