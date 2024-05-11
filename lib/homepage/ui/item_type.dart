import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
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
    salesN: Icons.point_of_sale,
    purchasingN: Icons.shopping_cart,
    inventoryN: FontAwesomeIcons.box,
  };
  final List fontawesomeIcons = [salesN, inventoryN];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xfffcfdf6),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.green.shade200,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey.shade700,
                  ),
                ),
                Icon(
                  nameToIconItemType[title],
                  color: Colors.grey.shade600,
                  size: fontawesomeIcons.contains(title) ? 20 : null,
                ),
              ],
            ),
          ),
          sizedBox(height: 10),
          ItemSelect(
            title: addItemName,
            iconData: Icons.add,
          ),
          sizedBox(height: 7),
          ItemSelect(
            title: detailPageName,
            iconData: Icons.add,
            hasDetailIcon: detailPageName == reorderStockN ? true : null,
          ),
        ],
      ),
    );
  }
}
