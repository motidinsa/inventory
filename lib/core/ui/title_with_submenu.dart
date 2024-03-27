import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/purchase_report/ui/purchase_report.dart';
import 'package:my_inventory/sales_report/ui/sales_report.dart';

class TitleWithSubMenu extends StatelessWidget {
  final String title;

  const TitleWithSubMenu({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
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
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              sizedBox(height: 10),
              ListTile(
                title: const Text(
                  'Sales report',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                leading: const Icon(
                  Icons.point_of_sale,
                  size: 28,
                ),
                onTap: () {
                  Get.to(() => const SalesReport());
                },
              ),
              // sizedBox(height: 5),
              ListTile(
                title: const Text(
                  'Purchase report',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                leading: const Icon(
                  Icons.shopping_cart_rounded,
                  size: 28,
                ),
                onTap: () {
                  Get.to(() => const PurchaseReport());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
