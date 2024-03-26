import 'package:flutter/material.dart';

import 'package:my_inventory/core/ui/title_with_submenu.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: TitleWithSubMenu(
        title: 'Report',
      ),
    );
  }
}
