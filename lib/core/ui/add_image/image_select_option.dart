import 'package:flutter/material.dart';

import '../../constants/name_constants.dart';
import '../../constants/widget_constants.dart';
import 'add_image_source_button.dart';

class ImageSelectOption extends StatelessWidget {
  const ImageSelectOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AddImageSourceButton(
          sourceLocation: galleryN,
        ),
        sizedBox(width: 20),
        AddImageSourceButton(
          sourceLocation: cameraN,
        ),
      ],
    );
  }
}
