import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/functions/product/product_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

class ProductItem extends StatelessWidget {
  final int index;
  final String currentPage;

  const ProductItem(
      {super.key, required this.index, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      shape: smoothRectangleBorder(radius: 12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Obx(
          () => Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 8,
                child: CustomTextField(
                  title: currentPage,
                  index: index,
                ),
              ),
              sizedBox(width: 10),
              Expanded(
                flex: 3,
                child: CustomTextField(
                  title: quantityN(),
                  index: index,
                ),
              ),
              sizedBox(width: 10),
              Expanded(
                flex: currentPage == purchaseN() ? 4 : 3,
                child: currentPage == purchaseN()
                    ? CustomTextField(
                        title: costN,
                        index: index,
                      )
                    : Text(
                        getFormattedNumberWithComa(getProductPrice( index: index)),
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16),
                      ),
              ),
              sizedBox(width: 10),
              Expanded(
                flex: 3,
                child: Text(
                  getFormattedNumberWithComa(getProductTotalPrice( index: index)),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
