import 'package:flutter/material.dart';
import 'package:my_inventory/core/functions/custom_text_field_helper_functions.dart';

import '../styles/styles.dart';

class CustomTextField2 extends StatefulWidget {
  const CustomTextField2({super.key});

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
      decoration: InputDecoration(
          fillColor: Colors.white70,
          filled: true,
          errorMaxLines: 2,
          border: UnderlineInputBorder(
            borderRadius:
            smoothBorderRadius(radius: 12),
            borderSide: BorderSide.none,
          ),
          prefixIcon:  getPrefixIcon(),
          // labelText: signUpRequirements[index],
          contentPadding:
          EdgeInsets.symmetric(horizontal: 20,vertical: 10)
      ),
    );
  }
}
