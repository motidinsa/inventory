import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gal/gal.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';

import 'package:my_inventory/core/styles/styles.dart';

class AddImageSourceButton extends StatelessWidget {
  final String sourceLocation;

  AddImageSourceButton({super.key, required this.sourceLocation});

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        onPressed: () async {
          AddProductController addProductController = Get.find();
          Get.back();
          await _picker
              .pickImage(source: ImageSource.gallery)
              .then((value) async {
            addProductController.productInfo.update((val) {
              val?.localImagePath = value?.path;
            });
            // var path = await getApplicationDocumentsDirectory();
            // value?.saveTo(path.path);
            try {
              await Gal.putImage(value!.path, album: appNameN());
            } on GalException catch (e) {
              log(e.type.message);
            }
            // var fileName = basename(file.path);
            // final File localImage = await value.copy('$path/$fileName');
            // Get.back();
          });
          // _image = image;
        },
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
      ),
    );
  }
}
