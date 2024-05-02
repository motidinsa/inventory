import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/functions/textfield/custom_text_field_helper_functions.dart';

import '../constants/name_constants.dart';
import '../functions/textfield/custom_text_field_functions.dart';
import '../functions/custom_text_field_functions.dart';
import '../functions/validations.dart';
import '../routes/route_names.dart';
import '../styles/styles.dart';

class CustomTextField2 extends StatefulWidget {
  final String title;
  final Color color;

  const CustomTextField2(
      {super.key, required this.title, this.color = Colors.white70});

  @override
  State<CustomTextField2> createState() => _CustomTextField2State();
}

class _CustomTextField2State extends State<CustomTextField2> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();
  @override
  void initState() {
    if ([customerNameN, vendorNameN, productN]
        .contains(widget.title) &&
        ![RouteName.editCustomer, RouteName.editVendor, RouteName.editProduct]
            .contains(Get.currentRoute)) {
      focusNode.requestFocus();
    }

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {},
      textAlignVertical: TextAlignVertical.center,
      controller: textEditingController,
      focusNode: focusNode,
      onChanged: (data) => onTextFieldChange(
        title: widget.title,
        data: data,
      ),
      decoration: InputDecoration(
          fillColor: widget.color,
          filled: true,
          errorMaxLines: 2,
          border: UnderlineInputBorder(
            borderRadius: smoothBorderRadius(radius: 12),
            borderSide: BorderSide.none,
          ),
          prefixIcon: titleToIcon(title: widget.title),
          labelText: titleToLabel(title: widget.title),
          floatingLabelStyle: TextStyle(color: Colors.green.shade800),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
      validator: (value) => validateInput(
        data: textEditingController.text,
        title: widget.title,
      ),
    );
  }
}
