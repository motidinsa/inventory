import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/payment_report/ui/payment_report.dart';
import 'package:my_inventory/purchase_report/ui/purchase_report.dart';
import 'package:my_inventory/sales_report/ui/sales_report.dart';

import 'package:my_inventory/inventory_report/ui/inventory_report.dart';

class TitleWithSubMenu extends StatelessWidget {
  final String title;

  const TitleWithSubMenu({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      surfaceTintColor: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              sizedBox(height: 10),
              ListTile(
                shape: smoothRectangleBorder(radius: 12),
                title: const Text(
                  'Sales report',
                ),
                leading: const Icon(
                  Icons.point_of_sale,
                  size: 24,
                ),
                onTap: () {
                  Get.toNamed(RouteName.salesReport);
                  Scaffold.of(context).closeDrawer();
                },
              ),
              ListTile(
                shape: smoothRectangleBorder(radius: 12),
                title: const Text(
                  'Purchase report',
                ),
                leading: const Icon(
                  Icons.shopping_cart_rounded,
                  size: 24,
                ),
                onTap: () {
                  Get.toNamed(RouteName.purchaseReport);
                  Scaffold.of(context).closeDrawer();
                },
              ),
              ListTile(
                shape: smoothRectangleBorder(radius: 12),
                title: const Text(
                  'Inventory report',
                ),
                leading: const Icon(
                  Icons.shelves,
                  size: 24,
                ),
                onTap: () {
                  Get.toNamed(RouteName.inventoryReport);
                  Scaffold.of(context).closeDrawer();
                },
              ),
              ListTile(
                shape: smoothRectangleBorder(radius: 12),
                title: const Text(
                  'Payment report',
                ),
                leading: const FaIcon(
                  FontAwesomeIcons.coins,
                  size: 19,
                ),
                onTap: () {
                  Get.toNamed(RouteName.inventoryReport);
                  Scaffold.of(context).closeDrawer();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
