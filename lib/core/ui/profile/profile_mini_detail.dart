import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    return GestureDetector(
      onTap: () {
        onSingleProfileDetailPressed(index: index);
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 0),
        shape: smoothRectangleBorder(radius: 12),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Row(
            children: [
              Icon(
                Get.currentRoute == RouteName.customerList
                    ? Icons.person
                    : Icons.corporate_fare_rounded,
                size: 28,
                color: Colors.grey.shade700,
              ),
              sizedBox(width: 25),
              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
