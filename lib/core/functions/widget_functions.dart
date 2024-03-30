import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

import '../styles/styles.dart';
import '../ui/date_filter.dart';

appBar({required String pageName, required BuildContext context}) {
  return AppBar(
    title: Text(
      pageName,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: const Color(0xff006E1C).withOpacity(.9),
      ),
    ),
    centerTitle: true,
    elevation: 3,
    shadowColor: Colors.grey,
    backgroundColor: const Color(0xffDCEEDE),
    leading: IconButton(
      onPressed: () => Get.back(),
      icon: Icon(
        Icons.close,
        color: Colors.grey.shade800,
      ),
    ),
    actions: [
      PopupMenuButton(
          position: PopupMenuPosition.under,
          shape: smoothRectangleBorder(),
          tooltip: '',
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(filterN),
          ),
          itemBuilder: (context) {
            return [
              PopupMenuItem<int>(
                enabled: false,
                value: 0,
                child: DateFilter(),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text("Settings"),
              ),
              PopupMenuItem<int>(
                value: 2,
                child: Text("Logout"),
              ),
            ];
          },
          onSelected: (value) {
            if (value == 0) {
              print("My account menu is selected.");
            } else if (value == 1) {
              print("Settings menu is selected.");
            } else if (value == 2) {
              print("Logout menu is selected.");
            }
          }),
      // DropdownButtonHideUnderline(
      //   child: DropdownButton2(
      //     customButton: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('Filter'),
      //     ),
      //     items: [
      //       DropdownMenuItem(
      //         child: Row(
      //           children: [
      //             Expanded(
      //               child: TextButton(
      //                 onPressed: () {
      //                   print('yo');
      //                 },
      //                 child: Text('datfhriufhreuifhiuerfa'),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //     onChanged: (value) {},
      //     dropdownStyleData: DropdownStyleData(
      //       // width: 300,
      //       // padding: const EdgeInsets.symmetric(vertical: 6),
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(4),
      //         color: Colors.redAccent,
      //       ),
      //       // offset: const Offset(0, 8),
      //     ),
      //     // menuItemStyleData: MenuItemStyleData(
      //     //   customHeights: [
      //     //     ...List<double>.filled(MenuItems.firstItems.length, 48),
      //     //     8,
      //     //     ...List<double>.filled(MenuItems.secondItems.length, 48),
      //     //   ],
      //     //   padding: const EdgeInsets.only(left: 16, right: 16),
      //     // ),
      //   ),
      // )
    ],
  );
}

addIconButton() {
  return Center(
    child: IconButton(
      onPressed: () => onAddIconPressed(),
      icon: const Icon(
        Icons.add,
        color: Colors.green,
        size: 27,
      ),
    ),
  );
}
