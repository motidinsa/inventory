import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/homepage/ui/item_select.dart';

class ItemType extends StatelessWidget {
  final String title;
  final String addItemName;
  final String detailPageName;

  const ItemType({
    super.key,
    required this.addItemName,
    required this.detailPageName,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 30),
      shape: SmoothRectangleBorder(
        borderRadius: smoothBorderRadius(),
        side: BorderSide(
          color: Colors.green,
          // width: .5,
        ),
      ),
      elevation: 8,
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Icon(Icons.access_alarms_sharp),
                ],
              ),
            ),
            sizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            sizedBox(height: 5),
            ItemSelect(title: addItemName, iconData: Icons.add),
            sizedBox(height: 10),
            ItemSelect(
                title: detailPageName,
                iconData: Icons.arrow_forward_ios_outlined),
          ],
        ),
      ),
    );
  }
}
