import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';

import '../../core/styles/styles.dart';

class AddImageSourceButton extends StatelessWidget {
  final String sourceLocation;

  AddImageSourceButton({super.key, required this.sourceLocation});

  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        onPressed: () async {
          // Get.back();
          final XFile? image =
              await _picker.pickImage(source: ImageSource.camera).then((value) {
                Get.back();
              });
          _image = image;
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                sourceLocation == 'Gallery'
                    ? Icons.image_outlined
                    : Icons.camera_alt_outlined,
                size: 45,
                color: Colors.grey.shade800,
              ),
              sizedBox(height: 5),
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
        style: ElevatedButton.styleFrom(
          shape: smoothRectangleBorder(radius: 12),
          padding: EdgeInsets.all(10),
          backgroundColor: Colors.green.shade100,
        ),
      ),
    );
  }
}
