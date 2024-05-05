import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/homepage/functions/homepage_functions.dart';
import 'package:smooth_corner/smooth_corner.dart';

class ItemSelect extends StatelessWidget {
  final String title;
  final IconData iconData;
  final bool? hasDetailIcon;

  const ItemSelect({
    super.key,
    required this.title,
    required this.iconData,
    this.hasDetailIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffDCEEDE),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      child: ListTile(
        onTap: () => navigateFromHomepage(title: title),
        shape: SmoothRectangleBorder(
          borderRadius: smoothBorderRadius(),
        ),
        title: Row(
          children: [
            sizedBox(width: 20),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800
                        // fontSize: 17,
                        ),
                  ),
                  if (hasDetailIcon != true)
                    IconButton(
                      style: IconButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () =>
                          navigateFromHomepage(title: title, isAddIcon: true),
                      icon: Icon(
                        iconData,color: Colors.grey.shade700,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
