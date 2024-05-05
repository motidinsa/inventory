import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/functions/textfield/custom_text_field_functions.dart';
import 'package:my_inventory/core/functions/validations.dart';
import 'package:my_inventory/core/styles/styles.dart';

import 'package:my_inventory/core/functions/textfield/custom_text_field_helper_functions.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final String? labelText;
  final String? suffixText;
  final int? index;

  const CustomTextField({
    super.key,
    required this.title,
    this.labelText,
    this.suffixText,
    this.index,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    focusNode.addListener(
      () => onFocusChange(
        title: widget.title,
        hasFocus: focusNode.hasFocus,
        data: textEditingController.text,
      ),
    );
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
      focusNode: focusNode,
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
        isCollapsed: true,
        errorMaxLines: 5,
        prefixIcon: titleToIcon(title: widget.title),
        suffixIcon: getSuffixWidget(title: widget.title),
        hintText: titleToHint(
          title: widget.title,
        ),
        hintStyle: const TextStyle(),
        contentPadding: getContentPadding(title: widget.title),
        border: OutlineInputBorder(
          borderRadius: smoothBorderRadius(radius: 15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: smoothBorderRadius(radius: 15),
          borderSide: BorderSide(
              color: Colors.green, width: getBorderWidth(title: widget.title)),
        ),
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
