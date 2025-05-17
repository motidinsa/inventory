import 'package:flutter/material.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/functions/textfield/custom_text_field_functions.dart';
import 'package:inventory/core/functions/validations.dart';
import 'package:inventory/core/styles/styles.dart';

import 'package:inventory/core/functions/textfield/custom_text_field_helper_functions.dart';

import 'package:inventory/core/functions/helper_functions.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final Color? fillColor;
  final String? labelText;
  final String? suffixText;
  final int? index;

  const CustomTextField(
      {super.key,
      required this.title,
      this.labelText,
      this.suffixText,
      this.index,
      this.fillColor});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    // if ([categoryNameN, uomNameN, customerNameN, vendorNameN, productN]
    //         .contains(widget.title) &&
    //     ![RouteName.editCustomer, RouteName.editVendor, RouteName.editProduct]
    //         .contains(Get.currentRoute)) {
    //   focusNode.requestFocus();
    // }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    executeAfterBuild(() {
      textEditingController.value = textEditingController.value.copyWith(
        text: titleToData(
          title: widget.title,
          index: widget.index,
        ),
      );
    });
    return TextFormField(
      controller: textEditingController,
      keyboardType: getKeyboardType(title: widget.title),
      maxLines: widget.labelText == descriptionN ? 2 : 1,
      readOnly: isReadOnlyTitle(title: widget.title),
      onChanged: (data) => onTextFieldChange(
        title: widget.title,
        data: data,
        index: widget.index,
      ),
      onTap: () => onTextFieldPressed(
        title: widget.title,
        index: widget.index,
      ),
      textAlign: getTextAlign(title: widget.title),
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: widget.fillColor??Colors.grey.shade300,
        // isCollapsed: true,
        errorMaxLines: 5,
        prefixIcon: titleToIcon(title: widget.title),
        suffixIcon: getSuffixWidget(title: widget.title),
        hintText: titleToHint(
          title: widget.title,
        ),
        // hintStyle:  TextStyle(color: Colors.grey.shade800),
        // contentPadding: EdgeInsets.symmetric(horizontal: ),
        contentPadding: getContentPadding(title: widget.title),
        border: OutlineInputBorder(
            borderRadius: smoothBorderRadius(radius: 15),
            borderSide: BorderSide.none),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: smoothBorderRadius(radius: 15),
        //   borderSide: BorderSide(
        //       color: Colors.green, width: getBorderWidth(title: widget.title)),
        // ),
        labelText: widget.labelText,
        alignLabelWithHint: true,
      ),
      validator: (value) => validateInput(
        data: textEditingController.text,
        title: widget.title,
      ),
    );
  }
}
