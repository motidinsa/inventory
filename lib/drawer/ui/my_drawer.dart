import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:folder_file_saver/folder_file_saver.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inventory/core/functions/helper_functions.dart';

import 'package:inventory/core/ui/title_with_submenu.dart';

import 'package:inventory/core/constants/widget_constants.dart';
import 'package:inventory/core/styles/styles.dart';

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
          ],
        ),
      ),
    );
  }
}
