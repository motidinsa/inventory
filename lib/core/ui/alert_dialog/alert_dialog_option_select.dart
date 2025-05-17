import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/functions/alert_dialog/alert_dialog_functions.dart';
import 'package:inventory/core/functions/core_functions.dart';
import 'package:inventory/core/styles/styles.dart';
import 'package:inventory/core/ui/add_image/image_select_option.dart';
import 'package:inventory/core/ui/alert_dialog/alert_dialog_option_item.dart';
import 'package:inventory/core/ui/custom_text_field.dart';

import 'package:inventory/core/routes/route_names.dart';

import 'package:inventory/add_product/functions/add_product_functions.dart';
import 'package:inventory/core/functions/helper_functions.dart';

class AlertDialogOptionSelect extends StatelessWidget {
  final String title;
  final int? listIndex;

  const AlertDialogOptionSelect({
    super.key,
    required this.title,
    this.listIndex,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSearchedListEmpty =
        getAlertDialogOptionLists(title: title).isEmpty;
    return GestureDetector(
      onTap: () => unFocus(),
      child: AlertDialog(
        contentPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 15,
          bottom:
              title != selectSourceN && !isAlertDialogListEmpty(title: title)
                  ? 15
                  : 0,
        ),
        shape: smoothRectangleBorder(radius: 15),
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
        ),surfaceTintColor: Colors.white,
        content: SizedBox(
          width: title != selectSourceN ? double.maxFinite : null,
          child:
              title == selectSourceN
                  ? const ImageSelectOption()
                  : ListView(
                    shrinkWrap: true,
                    physics:
                        isSearchedListEmpty
                            ? const NeverScrollableScrollPhysics()
                            : const ClampingScrollPhysics(),
                    children: [
                      if (!isAlertDialogListEmpty(title: title))
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: CustomTextField(
                            title: title,
                            index: listIndex,
                            fillColor: Colors.grey.shade300,
                          ),
                        ),
                      isSearchedListEmpty &&
                              !isAlertDialogListEmpty(title: title)
                          ? Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                getEmptySearchResult(title: title),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                          )
                          : ListView.builder(
                            shrinkWrap: true,
                            reverse: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return AlertDialogOptionItem(
                                title: title,
                                listIndex:
                                    [
                                          RouteName.addPurchase,
                                          RouteName.addSales,
                                        ].contains(Get.currentRoute)
                                        ? listIndex
                                        : null,
                                index: index,
                              );
                            },
                            itemCount:
                                getAlertDialogOptionLists(title: title).length,
                          ),
                      if (isSearchedListEmpty) const SizedBox(height: 8),
                      if (isAlertDialogListEmpty(title: title))
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 8,
                          ),
                          child: Text(
                            getEmptyMessage(title: title),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              // fontStyle: FontStyle.italic,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ),
                      if (![
                        searchCustomersN,
                        searchProductsN,
                        searchVendorsN,
                      ].contains(title))
                        Align(
                          child: IconButton(
                            onPressed: () => onAddIconPressed(type: title),
                            style: IconButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              padding: EdgeInsets.zero,
                            ),
                            icon: const Icon(
                              Icons.add,
                              color: Colors.green,
                              size: 27,
                            ),
                          ),
                        ),
                      const SizedBox(height: 8),
                    ],
                  ),
        ),
      ),
    );
  }
}
