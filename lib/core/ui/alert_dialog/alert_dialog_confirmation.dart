import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';

import '../../functions/alert_dialog/alert_dialog_functions.dart';
import '../../styles/styles.dart';

class AlertDialogConfirmation extends StatelessWidget {
  final String confirmationText;

  const AlertDialogConfirmation({super.key, required this.confirmationText});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 15,
      ),
      actionsPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      titlePadding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 15,
        bottom: 0,
      ),
      shape: smoothRectangleBorder(radius: 15),
      title: Text(
        confirmToDeleteN,
        textAlign: TextAlign.center,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      content: Text(confirmationText),
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
          },
          style: TextButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
          child: Text(cancelN),
        ),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.red.shade400,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
          onPressed: () {
            onAlertDialogDeleteButtonPressed();
          },
          child: Text(
            deleteN,
            style: TextStyle(),
          ),
        ),
      ],
    );
  }
}
