import 'package:flutter/material.dart';
import 'package:inventory/core/functions/alert_dialog/alert_dialog_functions.dart';

class AlertDialogOptionItem extends StatelessWidget {
  final String title;
  final int index;
  final int? listIndex;

  const AlertDialogOptionItem({
    super.key,
    required this.title,
    required this.index,
    this.listIndex,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          getAlertDialogOptionName(title: title, index: index),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
      ),
      trailing: Text(
        getAlertDialogSuffixName(
          title: title,
          index: index,
        ),
        style: const TextStyle(
          color: Colors.green,
          fontSize: 13,
        ),
      ),
      titleAlignment: ListTileTitleAlignment.center,
      onTap: () => onAlertDialogOptionSelect(
          title: title, listIndex: listIndex, index: index),
    );
  }
}
