import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';

import '../styles/styles.dart';

class ProfileMiniDetail extends StatelessWidget {
  final String name;

  const ProfileMiniDetail({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      shape: smoothRectangleBorder(radius: 12),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Row(
          children: [
            Icon(
              Icons.person,
              size: 28,
              color: Colors.grey.shade700,
            ),
            sizedBox(width: 30),
            Expanded(
              child: Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
