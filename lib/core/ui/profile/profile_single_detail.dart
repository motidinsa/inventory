import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/functions/textfield/custom_text_field_helper_functions.dart';

class ProfileSingleDetail extends StatelessWidget {
  final String title;
  final String? data;
  final double? titleFontSize;
  final double? dataFontSize;
  final Color? titleColor;
  final Color? dataColor;
  final TextAlign? textAlign;

   const ProfileSingleDetail(
      {super.key,
      required this.title,
      this.data,
      this.titleFontSize,
      this.dataFontSize,
      this.titleColor,
      this.dataColor,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:
          data == null ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
       titleToIcon(
          title: title,
        )!,
        sizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title,
                  style: TextStyle(
                    fontWeight: bold(),
                    fontSize: titleFontSize ?? 16,
                    color: titleColor ?? Colors.grey.shade700,
                  )),
              if (data != null) ...[
                sizedBox(height: 5),
                Text(data!,
                    style: TextStyle(
                      color: dataColor ?? Colors.grey.shade500,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: dataFontSize ?? 16,
                    ))
              ],
            ],
          ),
        ),
      ],
    );
  }
}
