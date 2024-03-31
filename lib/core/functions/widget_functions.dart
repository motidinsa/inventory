import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';

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
    actions: [salesReportN, purchaseReportN]
            .contains(AppController.to.currentPages.last)
        ? [
            PopupMenuButton(
              position: PopupMenuPosition.under,
              shape: smoothRectangleBorder(),
              tooltip: '',
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      filterN,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade800,
                          fontSize: 16),
                    ),
                    sizedBox(width: 5),
                    Icon(
                      Icons.filter_alt_rounded,
                      color: Colors.green.shade800,
                      size: 20,
                    )
                  ],
                ),
              ),
              itemBuilder: (context) {
                return [
                  PopupMenuItem<int>(
                    enabled: false,
                    padding: EdgeInsets.zero,
                    value: 0,
                    child: DateFilter(),
                  ),
                ];
              },
            ),
          ]
        : null,
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
