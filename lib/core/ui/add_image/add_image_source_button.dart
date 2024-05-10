import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';

import 'package:my_inventory/core/functions/image/image_functions.dart';

class AddImageSourceButton extends StatelessWidget {
  final String sourceLocation;

  const AddImageSourceButton({super.key, required this.sourceLocation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        onPressed: () =>
            onImageSourceButtonPressed(sourceLocation: sourceLocation),
        style: ElevatedButton.styleFrom(
          shape: smoothRectangleBorder(radius: 12),
          padding: const EdgeInsets.all(10),
          backgroundColor: Colors.green.shade100,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                sourceLocation == galleryN
                    ? Icons.image_outlined
                    : Icons.camera_alt_outlined,
                size: 45,
                color: Colors.grey.shade600,
              ),
              const SizedBox(height: 5),
              Text(
                sourceLocation,
                style: TextStyle(
                  color: Colors.grey.shade800,
                  // fontWeight: bold(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
