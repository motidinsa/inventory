import 'package:flutter/material.dart';
import 'package:my_inventory/add_product/constants/add_product_constants.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/functions/custom_text_field_functions.dart';
import 'package:my_inventory/core/functions/product/product_functions.dart';
import 'package:my_inventory/core/functions/validations.dart';
import 'package:my_inventory/core/styles/styles.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final String? labelText;
  final String? suffixText;
  final int? index;

     CustomTextField({
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
    if ([categoryNameN, uomNameN].contains(widget.title)) {
      focusNode.requestFocus();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
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
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: getKeyboardType(title: widget.title),
      maxLines: widget.labelText == descriptionN ? 2 : 1,
      readOnly: hasOption(title: widget.title),
      onChanged: (data) => onTextFieldChange(
        title: widget.title,
        data: data,
        index: widget.index,
      ),
      onTap: () => onTextFieldPressed(
        title: widget.title,
        index: widget.index,
      ),
      textAlign: minimizePadding(title: widget.title)
          ? TextAlign.center
          : TextAlign.start,
      decoration: InputDecoration(
        isDense: true,
        isCollapsed: true,
        errorMaxLines: 5,
        prefixIcon: hasPrefix(title: widget.title)
            ? profileTitleToIcon(title: widget.title)
            : null,
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
                      getSuffix(),
                      style: const TextStyle(fontSize: 16),
                    ),
                  )
                : hasSearchIcon(title: widget.title)
                    ? IconButton(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search_rounded,
                          size: 26,
                        ),
                      )
                    : null,
        hintText: titleToHint(
          title: widget.title,
        ),
        hintStyle: const TextStyle(),
        contentPadding: EdgeInsets.symmetric(
            horizontal: minimizePadding(title: widget.title) ? 10 : 30,
            vertical: minimizePadding(title: widget.title)
                ? 10
                : maxPadding(title: widget.title)
                    ? 15
                    : 20),
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
      validator: (value) => validateInput(
        data: textEditingController.text,
        title: widget.title,
      ),
    );
  }
}
