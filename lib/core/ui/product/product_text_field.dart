import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';

import 'package:my_inventory/add_product/constants/add_product_constants.dart';

class ProductTextField extends StatefulWidget {
  final String hintText;
  final String? labelText;
  final bool? minimizePadding;
  final bool? hasOptions;
  final bool? prefixText;
  final String? suffixText;

  const ProductTextField({
    super.key,
    required this.hintText,
    this.labelText,
    this.minimizePadding,
    this.hasOptions,
    this.prefixText,
    this.suffixText,
  });

  @override
  State<ProductTextField> createState() => _ProductTextFieldState();
}

class _ProductTextFieldState extends State<ProductTextField> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

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
      readOnly: widget.hasOptions == true ? true : false,
      textAlign: widget.minimizePadding == true
          ? widget.prefixText == null
              ? TextAlign.center
              : TextAlign.start
          : TextAlign.start,
      decoration: InputDecoration(
        isDense: true,
        isCollapsed: true,
        prefixIcon: widget.prefixText == true
            ? Padding(
                padding: const EdgeInsets.only(
                    top: 12, bottom: 10, left: 12, right: 5),
                child: Text(
                  etbN(),
                  style: const TextStyle(fontSize: 16),
                ),
              )
            : null,
        prefixIconConstraints: const BoxConstraints(
          minHeight: 0,
        ),
        suffixIcon: widget.hasOptions == true
            ? const Icon(
                Icons.arrow_drop_down_rounded,
                color: Colors.teal,
                size: 24,
              )
            : widget.suffixText != null
                ? Padding(
                    padding: const EdgeInsets.only(
                        top: 11, bottom: 10, left: 10, right: 15),
                    child: Text(
                      widget.suffixText!,
                      style: const TextStyle(fontSize: 16),
                    ),
                  )
                : null,
        hintText: widget.hintText,
        hintStyle: const TextStyle(),
        contentPadding: EdgeInsets.symmetric(
            horizontal: widget.minimizePadding == true ? 10 : 30,
            vertical: widget.minimizePadding == true ? 10 : 15),
        border: OutlineInputBorder(
          borderRadius: smoothBorderRadius(radius: 15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: smoothBorderRadius(radius: 15),
          borderSide: BorderSide(
            color: Colors.green,
            width: widget.hasOptions == true ? 2 : addProductBorderSide(),
          ),
        ),
        labelText: widget.labelText,
        alignLabelWithHint: true,
      ),
    );
  }
}
