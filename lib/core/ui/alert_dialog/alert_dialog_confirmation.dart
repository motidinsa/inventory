import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory/core/constants/name_constants.dart';

import 'package:inventory/core/functions/alert_dialog/alert_dialog_functions.dart';
import 'package:inventory/core/styles/styles.dart';

class AlertDialogConfirmation extends StatelessWidget {
  final String confirmationText;

  const AlertDialogConfirmation({super.key, required this.confirmationText});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 15,
      ),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      titlePadding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 15,
        bottom: 0,
      ),
      shape: smoothRectangleBorder(radius: 15),
      title: const Text(
        confirmToDeleteN,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      content: Text(confirmationText,style: const TextStyle(fontSize: 16),),
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
          },
          style: TextButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
          child: const Text(cancelN,style: TextStyle(fontSize: 15),),
        ),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.red.shade400,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
          onPressed: () {
            onAlertDialogDeleteButtonPressed();
          },
          child: const Text(
            deleteN,style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
