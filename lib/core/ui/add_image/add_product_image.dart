import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/product/product_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';

import 'package:my_inventory/core/functions/image/image_functions.dart';

class AddProductImage extends StatelessWidget {
  AddProductImage({super.key});

  final String? productImagePath = getProductImagePath();

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
        const SizedBox(width: 40),

        if (productImagePath != null)
          Column(
            children: [
              Image.file(
                File(productImagePath!),
                width: 100,
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  TextButton(
                    onPressed: () => onDeleteImageButtonPressed(),
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
        else
          ElevatedButton(
            onPressed: () => onAddImagePressed(),
            style: ElevatedButton.styleFrom(
              shape: smoothRectangleBorder(radius: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              backgroundColor: Colors.green.shade50,
            ),
            child: const Column(
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
