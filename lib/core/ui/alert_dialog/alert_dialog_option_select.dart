import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/alert_dialog/alert_dialog_functions.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/add_image/image_select_option.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_item.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

class AlertDialogOptionSelect extends StatelessWidget {
  final String title;
  final int? listIndex;

  const AlertDialogOptionSelect(
      {super.key, required this.title, this.listIndex});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unFocus(),
      child: AlertDialog(
        contentPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 15,
          bottom: title != selectSourceN ? 15 : 0,
        ),
        shape: smoothRectangleBorder(radius: 15),
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        content: SizedBox(
          width: title != selectSourceN ? double.maxFinite : null,
          child: title == selectSourceN
              ? const ImageSelectOption()
              : ListView(
                  shrinkWrap: true,
                  physics: getAlertDialogOptionLists(
                            title: title,
                          ).length ==
                          0
                      ? NeverScrollableScrollPhysics()
                      : ClampingScrollPhysics(),
                  children: [
                    if (getAlertDialogOptionLists(title: title).length != 0)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: CustomTextField(
                          title: title,
                          index: listIndex,
                        ),
                      ),
                    Obx(
                      () => ListView.builder(
                        shrinkWrap: true,
                        reverse: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return AlertDialogOptionItem(
                            title: title,
                            listIndex: [
                              purchaseN(),
                              salesN()
                            ].contains(AppController.to.currentPages.last)
                                ? listIndex
                                : null,
                            name: getAlertDialogOptionName(
                                title: title, index: index),
                            isarId: getAlertDialogOptionId(
                                title: title, index: index),
                          );
                        },
                        itemCount: getAlertDialogOptionLists(
                          title: title,
                        ).length,
                      ),
                    ),
                    if (getAlertDialogOptionLists(title: title).length == 0)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: Text(
                          getEmptyMessage(title: title),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ),
                    if (getAlertDialogOptionLists(
                          title: title,
                        ).length ==
                        0)
                      sizedBox(height: 8),
                    if (![searchCustomersN, searchProductsN()].contains(title))
                      Align(
                        child: IconButton(
                            onPressed: () => onAddIconPressed(
                                  type: title,
                                ),
                            style: IconButton.styleFrom(
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                padding: EdgeInsets.zero),
                            icon: const Icon(
                              Icons.add,
                              color: Colors.green,
                              size: 27,
                            )),
                      ),
                    // else
                    sizedBox(height: 8)
                  ],
                ),
        ),
      ),
    );
  }
}
