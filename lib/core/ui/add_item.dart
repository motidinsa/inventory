import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/add_item_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

class AddItem extends StatelessWidget {
  final String type;

  const AddItem({
    super.key,
    required this.type,
  });
  @override
  Widget build(BuildContext context) {
    String title = type == selectCategoryN ? addCategoryNameN : addUomNameN;
    String labelText = type == selectCategoryN ? categoryNameN : uomNameN;
    AddItemController addItemController = Get.put(AddItemController());
    return GestureDetector(
      onTap: () => unFocus(),
      child: AlertDialog(
        contentPadding: EdgeInsets.zero,
        titlePadding: const EdgeInsets.only(
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
                  CustomTextField(
                    title: labelText,
                    labelText: labelText,
                  ),
                  ActionButton(
                    redirectFrom: labelText,
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
