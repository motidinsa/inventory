import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/homepage/ui/item_select.dart';

class ItemType extends StatelessWidget {
  final String title;
  final String addItemName;
  final String detailPageName;

  ItemType({
    super.key,
    required this.addItemName,
    required this.detailPageName,
    required this.title,
  });
  final Map<String, IconData> nameToIconItemType = {
    salesN(): FontAwesomeIcons.tags,
    purchasingN(): Icons.shopping_cart,
    inventoryN(): FontAwesomeIcons.box,
    inventoryN(): FontAwesomeIcons.box,
  };
  final List fontawesomeIcons = [salesN(), inventoryN()];
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      shape: SmoothRectangleBorder(
        borderRadius: smoothBorderRadius(radius: 15),
        side: const BorderSide(
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
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Icon(
                    nameToIconItemType[title],
                    color: Colors.grey.shade600,
                    size: fontawesomeIcons.contains(title) ? 20 : null,
                  ),
                ],
              ),
            ),
            sizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            sizedBox(height: 5),
            ItemSelect(
              title: addItemName,
              iconData: Icons.add,
            ),
            sizedBox(height: 10),
            ItemSelect(
              title: detailPageName,
              iconData: Icons.arrow_forward_ios_outlined,
              isDetailButton: true,
            ),
          ],
        ),
      ),
    );
  }
}
