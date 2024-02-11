import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:smooth_corner/smooth_corner.dart';

class ItemSelect extends StatelessWidget {
  final String title;
  final IconData iconData;

  const ItemSelect({super.key, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green.shade50,
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: ListTile(
        onTap: () {},
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
                      // fontSize: 16,
                    ),
                  ),
                  Icon(iconData),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
