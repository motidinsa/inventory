import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_product/constants/add_product_constants.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/functions/custom_text_field_functions.dart';
import 'package:my_inventory/core/functions/product/product_functions.dart';
import 'package:my_inventory/core/functions/validations.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/main.dart';

import '../functions/custom_text_field_helper_functions.dart';

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
    if ([categoryNameN, uomNameN, customerNameN, vendorNameN, productN]
            .contains(widget.title) &&
        ![RouteName.editCustomer, RouteName.editVendor, RouteName.editProduct]
            .contains(Get.currentRoute)) {
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
      textAlign: minimizePadding(title: widget.title)
          ? TextAlign.center
          : TextAlign.start,
      decoration: InputDecoration(
        isDense: true,
        isCollapsed: true,
        errorMaxLines: 5,
        prefixIcon: getPrefixIcon(title: widget.title),
        suffixIcon: hasOptionItems(title: widget.title)
            ? const Icon(
                Icons.arrow_drop_down_rounded,
                color: Colors.teal,
                size: 24,
              )
            : hasSuffixIcon(title: widget.title)
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
            horizontal: hasPaymentOptionPadding(title: widget.title)
                ? 20
                : minimizePadding(title: widget.title)
                    ? 10
                    : 30,
            vertical: hasPaymentOptionPadding(title: widget.title)
                ? 10
                : minimizePadding(title: widget.title)
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
            width: hasOptionItems(title: widget.title)
                ? 2
                : addProductBorderSide(),
          ),
        ),
        labelText: widget.labelText,
        labelStyle: TextStyle(
          fontSize: context.responsive<double>(
            18,
            xxl: 23,
            xl: 22,
            lg: 19,
            md: 18,
            sm: 16,
            xs: 16,
            xxs: 15,
          ),
        ),
        // label: focusNode.hasFocus?Text(widget.labelText??'',):Center(child: Text(widget.labelText??'',))
        alignLabelWithHint: true,
      ),
      validator: (value) => validateInput(
        data: textEditingController.text,
        title: widget.title,
      ),
    );
  }
}
