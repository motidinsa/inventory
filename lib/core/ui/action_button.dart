import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/action_button_enum.dart';

class ActionButton extends StatelessWidget {
  final String redirectFrom;
  final ActionButtonType? actionButtonType;
  final EdgeInsetsGeometry? padding;

  ActionButton(
      {super.key,
      required this.redirectFrom,
      this.actionButtonType,
      this.padding});

  final AppController appController = Get.find();

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
                backgroundColor: actionButtonType == ActionButtonType.delete
                    ? Colors.red.shade400
                    : Colors.green.shade100,
              ),
              child: isActionButtonLoading()
                  ? const SizedBox(
                      width: 23,
                      height: 23,
                      child: CircularProgressIndicator(
                        strokeWidth: 3,
                      ),
                    )
                  : Text(
                      actionButtonType == null
                          ? saveN
                          : actionButtonType == ActionButtonType.filter
                              ? filterN
                              : 'Delete',
                      style: TextStyle(
                          fontSize: 16,
                          color: actionButtonType == ActionButtonType.delete
                              ? Colors.white
                              : null),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
