import 'package:flutter/material.dart';
import 'package:inventory/core/constants/color_constants.dart';
import 'package:inventory/core/functions/profile/profile_functions.dart';
import 'package:inventory/core/styles/styles.dart';

class ProfileMiniDetail extends StatelessWidget {
  final String name;
  final int index;
  final IconData iconData;

  const ProfileMiniDetail({
    super.key,
    required this.name,
    required this.index,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      shape: smoothRectangleBorder(radius: 12),
      elevation: 2,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 25),
        onTap: () {
          onSingleProfileDetailPressed(index: index);
        },
        shape: smoothRectangleBorder(radius: 12),
        tileColor: lightGreen,
        leading: Icon(
          iconData,
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
