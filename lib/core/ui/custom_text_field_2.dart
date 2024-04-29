import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/functions/custom_text_field_helper_functions.dart';

import '../constants/name_constants.dart';
import '../functions/custom_text_field_functions.dart';
import '../routes/route_names.dart';
import '../styles/styles.dart';

class CustomTextField2 extends StatefulWidget {
  final String title;

  const CustomTextField2({super.key, required this.title});

  @override
  State<CustomTextField2> createState() => _CustomTextField2State();
}

class _CustomTextField2State extends State<CustomTextField2> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

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
          fillColor: Colors.white70,
          filled: true,
          errorMaxLines: 2,
          border: UnderlineInputBorder(
            borderRadius: smoothBorderRadius(radius: 12),
            borderSide: BorderSide.none,
          ),
          prefixIcon: titleToIcon(title: widget.title),
          labelText: titleToLabel(title: widget.title),
          labelStyle: TextStyle(
              color: !focusNode.hasFocus && textEditingController.text.isNotEmpty
                  ? Colors.green.shade800
                  : null),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
    );
  }
}
