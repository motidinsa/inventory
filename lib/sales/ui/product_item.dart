import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';

class ProductItem extends StatelessWidget {
  final int index;

  ProductItem({super.key, required this.index});

  final SalesController salesController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      shape: smoothRectangleBorder(radius: 12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Obx(() => Row(
              children: [
                Expanded(
                  flex: 9,
                  child: ProductTextField(
                    currentPage: salesN(),
                    title: salesN(),
                    index: index,
                  ),
                ),
                sizedBox(width: 15),
                Expanded(
                  flex: 3,
                  child: ProductTextField(
                    currentPage: salesN(),
                    title: quantity(),
                    index: index,
                  ),
                ),
                sizedBox(width: 10),
                Expanded(
                  flex: 3,
                  child: Text(
                    salesController.salesModel[index].value.price.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                sizedBox(width: 10),
                Expanded(
                    flex: 3,
                    child: Text(
                      salesController.salesModel[index].value.totalAmount
                          .toString(),
                      textAlign: TextAlign.center,
                      style:
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
              ],
            )),
      ),
    );
  }
}
