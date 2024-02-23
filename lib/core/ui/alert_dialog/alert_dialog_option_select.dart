import 'package:flutter/material.dart';

import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_item.dart';

class AlertDialogOptionSelect extends StatelessWidget {
  final String title;
  final List<String> itemList;

  const AlertDialogOptionSelect({
    super.key,
    required this.title,
    required this.itemList,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      titlePadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      shape: smoothRectangleBorder(radius: 15),
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: ListView(
          shrinkWrap: true,
          children: [
            // const Divider(color: Colors.grey, height: 0),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return AlertDialogOptionItem(
                  title: title,
                  itemName: itemList[index],
                );
              },
              itemCount: itemList.length,
              separatorBuilder: (BuildContext context, int index) => Divider(
                color: Colors.grey.shade300,
                height: 0,
              ),
            ),
            Align(
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Colors.green,
                    size: 27,
                  )),
            ),
            sizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
