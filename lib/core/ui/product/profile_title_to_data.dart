import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';

import 'package:my_inventory/product_list/ui/product_detail_single_description.dart';

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
      mainAxisAlignment: alignment ?? MainAxisAlignment.start,
      children: [
        titleToIcon(title: title),
        sizedBox(width: 15),
        ProductDetailSingleDescription(
          title: title,
          description: data,
        ),
      ],
    );
  }
}
