import 'package:flutter/material.dart';

import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/constants/widget_constants.dart';
import 'package:inventory/core/ui/add_image/add_image_source_button.dart';

class ImageSelectOption extends StatelessWidget {
  const ImageSelectOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const AddImageSourceButton(
          sourceLocation: galleryN,
        ),
        sizedBox(width: 20),
        const AddImageSourceButton(
          sourceLocation: cameraN,
        ),
      ],
    );
  }
}
