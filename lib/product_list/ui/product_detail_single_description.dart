import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';


import 'package:my_inventory/core/functions/helper_functions.dart';

class ProductDetailSingleDescription extends StatelessWidget {
  final String title;
  final String description;
  final double? titleFontSize;
  final double? dataFontSize;
  final Color? titleColor;
  final Color? dataColor;
  final TextAlign? textAlign;

  const ProductDetailSingleDescription(
      {super.key,
      required this.title,
      required this.description,
      this.titleFontSize,
      this.dataFontSize,
      this.titleColor,
      this.dataColor,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.start,
      text: TextSpan(
        text: '$title:   ',
        style: TextStyle(
          fontWeight: bold(),
          fontSize: titleFontSize ?? 16,
          color: titleColor ?? Colors.grey.shade700,
        ),
        children: <TextSpan>[
          TextSpan(
            text: isNumeric(description) && title!=phoneNumberN
                ? getFormattedNumberWithComa(double.parse(description))
                : description,
            style: TextStyle(
                color: dataColor ?? Colors.grey.shade500,
                // fontStyle: FontStyle.italic,
                fontSize: dataFontSize ?? 15),
          ),
        ],
      ),
    );
  }
}
