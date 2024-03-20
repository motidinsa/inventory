import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';

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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            sizedBox(height: 10),
            ListTile(
              title: const Text('Sales report'),
              leading: const Icon(Icons.all_inclusive_outlined),
              onTap: () {},
            ),
            // sizedBox(height: 5),
            ListTile(
              title: const Text('Purchase report'),
              leading: const Icon(Icons.add),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
