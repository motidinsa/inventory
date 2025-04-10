import 'package:flutter/material.dart';
import 'package:inventory/core/constants/widget_constants.dart';

import 'package:inventory/product_list/ui/product_detail_single_description.dart';

import 'package:inventory/core/functions/profile/profile_functions.dart';

import 'package:inventory/core/functions/textfield/custom_text_field_helper_functions.dart';

class ProfileTitleToData extends StatelessWidget {
  final String title;
  final String data;
  final MainAxisAlignment? alignment;
  final Color? titleColor;
  final Color? dataColor;

  const ProfileTitleToData({
    super.key,
    required this.title,
    required this.data,
    this.alignment,
    this.titleColor,
    this.dataColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment ?? MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        titleToIcon(title: title)!,
        sizedBox(width: 15),
        GestureDetector(
          onTap: ()=>onProfileDatePressed(),
          child: ProductDetailSingleDescription(
            title: title,
            description: data,
            titleColor: titleColor,
            dataColor: dataColor,
          ),
        ),
      ],
    );
  }
}
