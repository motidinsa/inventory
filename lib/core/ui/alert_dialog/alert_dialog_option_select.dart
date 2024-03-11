import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_product/ui/add_image_source_button.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';

import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/edit_product/controller/edit_controller.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:my_inventory/core/functions/alert_dialog/alert_dialog_functions.dart';
import 'package:my_inventory/core/model/category/category_database_model.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/model/unit_of_measurement/unit_of_measurement_database_model.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_item.dart';

class AlertDialogOptionSelect extends StatelessWidget {
  final String title;
  final int? listIndex;
  final String currentPage;
  final List? itemList;
  final String? productId;

  const AlertDialogOptionSelect(
      {super.key,
      required this.title,
      required this.currentPage,
      this.itemList,
      this.listIndex,
      this.productId});

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
                      productId: productId,
                    ),
                    sizedBox(width: 20),
                    AddImageSourceButton(
                      sourceLocation: cameraN,
                      currentPage: currentPage,
                      productId: productId,
                    ),
                  ],
                )
              : ListView(
                  shrinkWrap: true,
                  children: [
                    if (itemList?.isNotEmpty ?? title == searchProductsN())
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ProductTextField(
                          currentPage: currentPage,
                          title: title,
                          index: listIndex,
                        ),
                      ),
                    Obx(() => ListView.separated(
                          shrinkWrap: true,
                          reverse: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            ProductDatabaseModel? product;
                            CategoryDatabaseModel? category;
                            UnitOfMeasurementDatabaseModel? unitOfMeasurement;
                            if (currentPage == salesN()) {
                              SalesController salesController = Get.find();
                              product = salesController
                                  .searchProductFoundResult[index];
                            } else if (currentPage == addProductN) {
                              AddProductController addProductController =
                                  Get.find();
                              if (title == selectCategoryN()) {
                                category = addProductController
                                    .categoryListFoundResult[index];
                              } else if (title == selectUomN()) {
                                unitOfMeasurement = addProductController
                                    .unitOfMeasurementListFoundResult[index];
                              }
                            } else if (currentPage == editProductN) {
                              EditProductController editProductController =
                                  Get.find();
                              if (title == selectCategoryN()) {
                                category = editProductController
                                    .categoryListFoundResult[index];
                              } else if (title == selectUomN()) {
                                unitOfMeasurement = editProductController
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
                              category: product == null ? category : null,
                              currentPage: currentPage,
                              unitOfMeasurement: unitOfMeasurement,
                              index:
                                  [purchaseN(), salesN()].contains(currentPage)
                                      ? listIndex
                                      : index,
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
                    if (itemList?.isEmpty ?? itemList != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: Text(
                          title == selectCategoryN()
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
                                  currentPage: currentPage,
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
