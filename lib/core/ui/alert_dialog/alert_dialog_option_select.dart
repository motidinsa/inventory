import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/alert_dialog/alert_dialog_functions.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/add_image/image_select_option.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_item.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

import 'package:my_inventory/core/controller/app_controller.dart';

class AlertDialogOptionSelect extends StatelessWidget {
  final String title;
  final int? listIndex;
  final String? productId;

  const AlertDialogOptionSelect(
      {super.key, required this.title, this.listIndex, this.productId});

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
                  children: [
                    if (getAlertDialogOptionLists(title: title).length != 0)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: CustomTextField(
                          title: title,
                          index: listIndex,
                        ),
                      ),
                    Obx(() => ListView.separated(
                          shrinkWrap: true,
                          reverse: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return AlertDialogOptionItem(
                              title: title,
                              index: [
                                purchaseN(),
                                salesN()
                              ].contains(AppController.to.currentPages.last)
                                  ? listIndex
                                  : null,
                              name: getAlertDialogOptionName(
                                  title: title, index: index),
                              id: '',
                            );
                          },
                          itemCount: getAlertDialogOptionLists(
                            title: title,
                          ).length,
                          separatorBuilder: (BuildContext context, int index) =>
                              Divider(
                            color: Colors.grey.shade300,
                            height: 0,
                          ),
                        )),
                    if (getAlertDialogOptionLists(title: title).length == 0)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: Text(
                          title == selectCategoryN
                              ? noCategoryAvailableSN
                              : noUomAvailableSN,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ),
                    if (title != searchProductsN())
                      Align(
                        child: IconButton(
                            onPressed: () => onAddIconPressed(
                                  type: title,
                                ),
                            icon: const Icon(
                              Icons.add,
                              color: Colors.green,
                              size: 27,
                            )),
                      )
                    else
                      sizedBox(height: 20)
                  ],
                ),
        ),
      ),
    );
  }
}
