import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/color_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/profile/profile_functions.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/core/styles/styles.dart';

class ProfileMiniDetail extends StatelessWidget {
  final String name;
  final int index;

  const ProfileMiniDetail({super.key, required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      shape: smoothRectangleBorder(radius: 12),
      elevation: 3,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 25),
        onTap: () {onSingleProfileDetailPressed(index: index);},
        shape: smoothRectangleBorder(radius: 12),
        tileColor: lightGreen,
        leading: Icon(
          Get.currentRoute == RouteName.customerList
              ? Icons.person
              : Icons.corporate_fare_rounded,
          size: 28,
          color: Colors.grey.shade700,
        ),
        title: Row(
          children: [
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.grey.shade800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
