import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/customer_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';

import '../../../add_product/constants/add_product_constants.dart';

class ProductTextField extends StatefulWidget {
  final String hintText;
  final String? labelText;
  final bool? minimizePadding;
  final bool? hasOptions;

  const ProductTextField({
    super.key,
    required this.hintText,
    this.labelText,
    this.minimizePadding,
    this.hasOptions,
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
      textAlign: widget.hasOptions == true ? TextAlign.center : TextAlign.start,
      decoration: InputDecoration(
        suffixIcon: widget.hasOptions == true
            ? const Icon(
                Icons.arrow_drop_down_rounded,
                color: Colors.teal,
              )
            : null,
        hintText: widget.hintText,
        hintStyle: TextStyle(),
        contentPadding: EdgeInsets.symmetric(
            horizontal: widget.minimizePadding == true ? 20 : 30,
            vertical: widget.minimizePadding == true ? 10 : 15),
        border: OutlineInputBorder(
          borderRadius: smoothBorderRadius(radius: 15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: smoothBorderRadius(radius: 15),
          borderSide: BorderSide(
            color: Colors.green,
            width: widget.hasOptions == true ?2:addProductBorderSide(),
          ),
        ),
        labelText: widget.labelText,
        alignLabelWithHint: true,
      ),
    );
  }
}
