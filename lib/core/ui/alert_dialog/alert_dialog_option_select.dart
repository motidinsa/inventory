import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/product/product_model.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/alert_dialog/alert_dialog_option_item.dart';

import 'package:my_inventory/add_product/functions/add_product_functions.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';

import 'package:my_inventory/add_product/controller/add_product_controller.dart';

import '../../../purchase/controller/purchase_controller.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {});
    });
    return GestureDetector(
      onTap: () => unFocus(),
      child: AlertDialog(
        contentPadding: EdgeInsets.zero,
        titlePadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        shape: smoothRectangleBorder(radius: 15),
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView(
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
              ListView.separated(
                shrinkWrap: true,
                reverse: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  ProductModel? product;
                  String? item;
                  if (widget.currentPage == salesN()) {
                    SalesController salesController = Get.find();
                    product = salesController.searchProductFoundResult[index];
                  } else if (widget.currentPage == addProductN()) {
                    AddProductController addProductController = Get.find();
                    if (widget.title == selectCategory()) {
                      item =
                          addProductController.categoryListFoundResult[index];
                    }
                  }else if(widget.currentPage == purchaseN()){
                    PurchaseController purchaseController = Get.find();
                    product =  purchaseController.searchProductFoundResult[index];
                  }
                  return AlertDialogOptionItem(
                    title: widget.title,
                    product:  product,
                    item: product ==null ? item : null,
                    currentPage: widget.currentPage,
                    index: widget.index,
                  );
                },
                itemCount: getAlertDialogLength(
                  currentPage: widget.currentPage,
                  title: widget.title,
                ),
                separatorBuilder: (BuildContext context, int index) => Divider(
                  color: Colors.grey.shade300,
                  height: 0,
                ),
              ),
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
