import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:my_inventory/core/ui/title_with_submenu.dart';

import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView(
          children: [
            const TitleWithSubMenu(
              title: 'Report',
            ),
            sizedBox(height: 5),
            Card(
              elevation: 2,
              surfaceTintColor: Colors.white,
              child: ListTile(
                shape: smoothRectangleBorder(radius: 12),
                title: const Text(
                  'Export',
                ),
                leading: const FaIcon(FontAwesomeIcons.fileExport,size: 22,),
                onTap: () {
                },
              ),
            ),sizedBox(height: 5),
            Card(
              elevation: 2,
              surfaceTintColor: Colors.white,
              child: ListTile(
                shape: smoothRectangleBorder(radius: 12),
                title: const Text(
                  'Import',
                ),
                leading: const FaIcon(FontAwesomeIcons.fileImport,size: 22,),
                onTap: () {
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
