import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/functions/textfield/custom_text_field_helper_functions.dart';

import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/textfield/custom_text_field_functions.dart';
import 'package:my_inventory/core/functions/validations.dart';
import 'package:my_inventory/core/routes/route_names.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

class CustomTextField2 extends StatefulWidget {
  final String title;
  final Color? color;

  const CustomTextField2({super.key, required this.title, this.color});

  @override
  State<CustomTextField2> createState() => _CustomTextField2State();
}

class _CustomTextField2State extends State<CustomTextField2> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    if ([customerNameN, vendorNameN, productN, categoryNameN, uomNameN]
            .contains(widget.title) &&
        ![RouteName.editCustomer, RouteName.editVendor, RouteName.editProduct]
            .contains(Get.currentRoute)) {
      focusNode.requestFocus();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    executeAfterBuild(() {
      textEditingController.value = textEditingController.value.copyWith(
        text: titleToData(
          title: widget.title,
        ),
      );
    });
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      controller: textEditingController,
      focusNode: focusNode,
      keyboardType: getKeyboardType(title: widget.title),
      maxLines: widget.title == descriptionN ? 2 : 1,
      readOnly: isReadOnlyTitle(title: widget.title),
      onChanged: (data) => onTextFieldChange(
        title: widget.title,
        data: data,
      ),
      onTap: () => onTextFieldPressed(
        title: widget.title,
      ),
      decoration: InputDecoration(
          fillColor: widget.color ?? Colors.green.shade50,
          filled: true,
          errorMaxLines: 2,
          border: UnderlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12)),
          prefixIcon: titleToIcon(title: widget.title),
          suffixIcon: getSuffixWidget(title: widget.title),
          labelText: titleToLabel(title: widget.title),
          floatingLabelStyle: TextStyle(color: Colors.green.shade900),
          contentPadding: getTextFieldPadding(title: widget.title) ??
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
      validator: (value) => validateInput(
        data: textEditingController.text,
        title: widget.title,
      ),
    );
  }
}
