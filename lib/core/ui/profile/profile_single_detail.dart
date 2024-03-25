import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/custom_text_field_functions.dart';

import 'package:my_inventory/core/styles/styles.dart';

class ProfileSingleDetail extends StatelessWidget {
  final String title;
  final String data;
  final double? titleFontSize;
  final double? dataFontSize;
  final Color? titleColor;
  final Color? dataColor;
  final TextAlign? textAlign;

  const ProfileSingleDetail(
      {super.key,
      required this.title,
      required this.data,
      this.titleFontSize,
      this.dataFontSize,
      this.titleColor,
      this.dataColor,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        profileTitleToIcon(
          title: title,
        ),
        sizedBox(width: 15),
        Expanded(
          child: RichText(
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
                  text: data,
                  style: TextStyle(
                    color: dataColor ?? Colors.grey.shade500,
                    fontStyle: FontStyle.italic,
                    fontSize: dataFontSize ?? 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
