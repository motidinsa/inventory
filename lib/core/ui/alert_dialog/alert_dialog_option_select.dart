import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_item.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/core/functions/alert_dialog/alert_dialog_functions.dart';

import 'package:my_inventory/add_product/ui/add_image_source_button.dart';

class AlertDialogOptionSelect extends StatefulWidget {
  final String title;
  final int? index;
  final String currentPage;
  final List<String>? itemList;

  const AlertDialogOptionSelect({
    super.key,
    required this.title,
    required this.currentPage,
    this.itemList,
    this.index,
  });

  @override
  State<AlertDialogOptionSelect> createState() =>
      _AlertDialogOptionSelectState();
}

class _AlertDialogOptionSelectState extends State<AlertDialogOptionSelect> {
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
          bottom: widget.title != selectSourceN ? 15 : 0,
        ),
        shape: smoothRectangleBorder(radius: 15),
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        content: SizedBox(
          width: widget.title != selectSourceN ? double.maxFinite : null,
          child: widget.title == selectSourceN
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AddImageSourceButton(
                      sourceLocation: galleryN,
                    ),
                    sizedBox(width: 20),
                    AddImageSourceButton(
                      sourceLocation: cameraN,
                    ),
                  ],
                )
              : ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ProductTextField(
                        currentPage: widget.currentPage,
                        title: widget.title,
                        index: widget.index,
                      ),
                    ),
                    Obx(() => ListView.separated(
                          shrinkWrap: true,
                          reverse: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            ProductModel? product;
                            String? item;
                            if (widget.currentPage == salesN()) {
                              SalesController salesController = Get.find();
                              product = salesController
                                  .searchProductFoundResult[index];
                            } else if (widget.currentPage == addProductN()) {
                              AddProductController addProductController =
                                  Get.find();
                              if (widget.title == selectCategoryN()) {
                                item = addProductController
                                    .categoryListFoundResult[index];
                              } else if (widget.title == selectUomN()) {
                                item = addProductController
                                    .unitOfMeasurementListFoundResult[index];
                              }
                            } else if (widget.currentPage == purchaseN()) {
                              PurchaseController purchaseController =
                                  Get.find();
                              product = purchaseController
                                  .searchProductFoundResult[index];
                            }
                            return AlertDialogOptionItem(
                              title: widget.title,
                              product: product,
                              item: product == null ? item : null,
                              currentPage: widget.currentPage,
                              index: widget.index,
                            );
                          },
                          itemCount: getAlertDialogLength(
                            currentPage: widget.currentPage,
                            title: widget.title,
                          ),
                          separatorBuilder: (BuildContext context, int index) =>
                              Divider(
                            color: Colors.grey.shade300,
                            height: 0,
                          ),
                        )),
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
      ),
    );
  }
}
