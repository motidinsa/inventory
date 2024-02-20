import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_product/functions/add_product_functions.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';

import 'package:my_inventory/add_product/constants/add_product_constants.dart';

import '../../../add_product/controller/add_product_controller.dart';

class ProductTextField extends StatefulWidget {
  final String? title;
  final String? labelText;
  final String? suffixText;

  const ProductTextField({
    super.key,
    this.title,
    this.labelText,
    this.suffixText,
  });

  @override
  State<ProductTextField> createState() => _ProductTextFieldState();
}

class _ProductTextFieldState extends State<ProductTextField> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();
  final AddProductController addProductController = Get.find();
  @override
  void initState() {
    super.initState();
    // focusNode.addListener(
    //       () => onFocusChange(
    //     title: widget.title,
    //     hasFocus: focusNode.hasFocus,
    //     data: textEditingController.text,
    //     context: context,
    //     redirectFrom: widget.redirectFrom,
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      focusNode: focusNode,
      maxLines: widget.labelText == descriptionN() ? 2 : 1,
      readOnly: hasOption(title: widget.title),
      textAlign: minimizePadding(title: widget.title)
          ? TextAlign.center
          : TextAlign.start,
      decoration: InputDecoration(
        isDense: true,
        isCollapsed: true,
        prefixIcon: hasPrefix(title: widget.title)
            ? Padding(
                padding: const EdgeInsets.only(
                    top: 12, bottom: 10, left: 12, right: 5),
                child: Text(
                  etbN(),
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: bold(),
                    color: Colors.grey.shade700,
                  ),
                ),
              )
            : null,
        prefixIconConstraints: const BoxConstraints(
          minHeight: 0,
        ),
        suffixIcon: hasOption(title: widget.title)
            ? const Icon(
                Icons.arrow_drop_down_rounded,
                color: Colors.teal,
                size: 24,
              )
            : hasSuffix(title: widget.title)
                ? Padding(
                    padding: const EdgeInsets.only(
                        top: 11, bottom: 10, left: 10, right: 15),
                    child: Text(
                      addProductController.selectedUnitOfMeasurement.value,
                      style: const TextStyle(fontSize: 16),
                    ),
                  )
                : null,
        hintText: titleToHint(title: widget.title),
        hintStyle: const TextStyle(),
        contentPadding: EdgeInsets.symmetric(
            horizontal: minimizePadding(title: widget.title) ? 10 : 30,
            vertical: minimizePadding(title: widget.title) ? 10 : 15),
        border: OutlineInputBorder(
          borderRadius: smoothBorderRadius(radius: 15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: smoothBorderRadius(radius: 15),
          borderSide: BorderSide(
            color: Colors.green,
            width: hasOption(title: widget.title) ? 2 : addProductBorderSide(),
          ),
        ),
        labelText: widget.labelText,
        alignLabelWithHint: true,
      ),
    );
  }
}
