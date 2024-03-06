import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/add_product/ui/add_image_source_button.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/alert_dialog/alert_dialog_functions.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_item.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

class AlertDialogOptionSelect extends StatelessWidget {
  final String title;
  final int? index;
  final String currentPage;
  final List<String>? itemList;
  final String? productId;

  const AlertDialogOptionSelect({
    super.key,
    required this.title,
    required this.currentPage,
    this.itemList,
    this.index,
    this.productId
  });


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
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AddImageSourceButton(
                      sourceLocation: galleryN,
                      currentPage: currentPage,
                    ),
                    sizedBox(width: 20),
                    AddImageSourceButton(
                      sourceLocation: cameraN,
                      currentPage: currentPage,
                    ),
                  ],
                )
              : ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ProductTextField(
                        currentPage: currentPage,
                        title: title,
                        index: index,
                      ),
                    ),
                    Obx(() => ListView.separated(
                          shrinkWrap: true,
                          reverse: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            ProductDatabaseModel? product;
                            String? item;
                            if (currentPage == salesN()) {
                              SalesController salesController = Get.find();
                              product = salesController
                                  .searchProductFoundResult[index];
                            } else if (currentPage == addProductN()) {
                              AddProductController addProductController =
                                  Get.find();
                              if (title == selectCategoryN()) {
                                item = addProductController
                                    .categoryListFoundResult[index];
                              } else if (title == selectUomN()) {
                                item = addProductController
                                    .unitOfMeasurementListFoundResult[index];
                              }
                            } else if (currentPage == purchaseN()) {
                              PurchaseController purchaseController =
                                  Get.find();
                              product = purchaseController
                                  .searchProductFoundResult[index];
                            }
                            return AlertDialogOptionItem(
                              title: title,
                              product: product,
                              item: product == null ? item : null,
                              currentPage: currentPage,
                              index: index,
                            );
                          },
                          itemCount: getAlertDialogLength(
                            currentPage: currentPage,
                            title: title,
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
