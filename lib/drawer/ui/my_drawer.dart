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
                onTap: () async {
                  // await FolderFileSaver.saveFileIntoCustomDir(
                  //   filePath:  '/data/data/com.inventory.inventory/app_flutter/default.isar',
                  //   dirNamed: '/',
                  // );
                  // showSnackbar(message: 'Successfully exported to Documents/inventory');
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
                onTap: () async {
                  FilePickerResult? result = await FilePicker.platform.pickFiles();

                  if (result != null) {
                    File file = File(result.files.single.path!).copySync('/data/data/com.inventory.inventory/app_flutter/default.isar');
                    showSnackbar(message: 'Successfully imported');
                  } else {
                    // User canceled the picker
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
