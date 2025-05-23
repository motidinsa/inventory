import 'package:flutter/material.dart';
import 'package:inventory/core/model/action_button_enum.dart';

import 'package:inventory/core/functions/action_button/action_button_functions.dart';
import 'package:inventory/core/functions/action_button/action_button_helper_functions.dart';

class ActionButton extends StatelessWidget {
  final String? redirectFrom;
  final ActionButtonType? actionButtonType;
  final EdgeInsetsGeometry? padding;
  final Color? textColor;

  const ActionButton({
    super.key,
    this.redirectFrom,
    this.actionButtonType,
    this.padding,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 15,horizontal: 40),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () => onActionButtonPressed(
                redirectFrom: redirectFrom,
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
                backgroundColor: getActionButtonBackgroundColor(),
              ),
              child: Text(
                getActionButtonText(),
                style: TextStyle(
                  fontSize: 16,
                  color: textColor ?? getActionButtonTextColor(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
