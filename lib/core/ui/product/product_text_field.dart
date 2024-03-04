import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_product/constants/add_product_constants.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/functions/product/product_text_field_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';

class ProductTextField extends StatefulWidget {
  final String currentPage;
  final String title;
  final String? labelText;
  final String? suffixText;
  final int? index;

  const ProductTextField({
    super.key,
    required this.title,
    this.labelText,
    this.suffixText,
    required this.currentPage,
    this.index,
  });

  @override
  State<ProductTextField> createState() => _ProductTextFieldState();
}

class _ProductTextFieldState extends State<ProductTextField> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    if (widget.currentPage == addProductN()) {
      focusNode.addListener(
        () => onFocusChange(
          currentPage: widget.currentPage,
          title: widget.title,
          hasFocus: focusNode.hasFocus,
          data: textEditingController.text,
        ),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      textEditingController.value = textEditingController.value.copyWith(
        text: titleToData(
          title: widget.title,
          currentPage: widget.currentPage,
          index: widget.index,
        ),
      );
      return TextFormField(
        controller: textEditingController,
        focusNode: focusNode,
        maxLines: widget.labelText == descriptionN() ? 2 : 1,
        readOnly: hasOption(title: widget.title),
        onChanged: (data) => onTextFieldChange(
          currentPage: widget.currentPage,
          title: widget.title,
          data: data,
          index: widget.index,
        ),
        onTap: () => onTextFieldPressed(
          currentPage: widget.currentPage,
          title: widget.title,
          context: context,
          index: widget.index,
        ),
        textAlign: minimizePadding(title: widget.title)
            ? TextAlign.center
            : TextAlign.start,
        decoration: InputDecoration(
          isDense: true,
          isCollapsed: true,
          errorText: widget.title == quantityN() ? 'invalid' : null,
          errorMaxLines: 10,
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
                      child: Obx(() {
                        AddProductController addProductController = Get.find();
                        return Text(
                          addProductController
                              .productInfo.value.unitOfMeasurement,
                          style: const TextStyle(fontSize: 16),
                        );
                      }),
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
              vertical: minimizePadding(title: widget.title) ? 10 : 15),
          border: OutlineInputBorder(
            borderRadius: smoothBorderRadius(radius: 15),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: smoothBorderRadius(radius: 15),
            borderSide: BorderSide(
              color: Colors.green,
              width:
                  hasOption(title: widget.title) ? 2 : addProductBorderSide(),
            ),
          ),
          labelText: widget.labelText,
          alignLabelWithHint: true,
        ),
        validator: (value) => mapValidation(
          data: textEditingController.text,
          title: widget.title,
        ),
      );
    });
  }
}
