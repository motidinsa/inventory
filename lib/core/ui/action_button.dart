import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/action_button_enum.dart';

import '../functions/action_button/action_button_functions.dart';
import '../functions/action_button/action_button_helper_functions.dart';

class ActionButton extends StatelessWidget {
  final String? redirectFrom;
  final ActionButtonType? actionButtonType;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Color? textColor;

  const ActionButton({
    super.key,
    this.redirectFrom,
    this.actionButtonType,
    this.padding,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () => onActionButtonPressed(
                redirectFrom: redirectFrom,
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
                backgroundColor: backgroundColor ?? Colors.green.shade100,
              ),
              child: Text(
                getActionButtonText(),
                style: TextStyle(
                  fontSize: 16,
                  color: textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
