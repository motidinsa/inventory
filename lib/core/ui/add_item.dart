import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/add_item_controller.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';

import '../functions/core_functions.dart';
import '../styles/styles.dart';

class AddItem extends StatelessWidget {
  final String type;
  final String currentPage;

  const AddItem({super.key, required this.type, required this.currentPage});
  @override
  Widget build(BuildContext context) {
    String title = type == selectCategoryN() ? addCategoryNameN : addUomNameN;
    String labelText = type == selectCategoryN() ? categoryNameN : uomNameN;
    AddItemController addItemController = Get.put(AddItemController());
    return GestureDetector(
      onTap: () => unFocus(),
      child: AlertDialog(
        contentPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 15,
          bottom: 15,
        ),
        shape: smoothRectangleBorder(radius: 15),
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        content: SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Form(
              key: addItemController.formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ProductTextField(
                    title: labelText,
                    currentPage: currentPage,
                    labelText: labelText,
                  ),
                  ActionButton(
                    redirectFrom: labelText,
                    currentPage: currentPage,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
