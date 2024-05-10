import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/product/product_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

import 'package:my_inventory/core/routes/route_names.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

class ProductItem extends StatelessWidget {
  final int index;

  const ProductItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Card(
        elevation: 2,
        shape: smoothRectangleBorder(radius: 12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 8,
                child: CustomTextField(
                  title: Get.currentRoute,
                  index: index,
                ),
              ),
              sizedBox(width: 10),
              Expanded(
                flex: 3,
                child: CustomTextField(
                  title: quantityN,
                  index: index,
                ),
              ),
              sizedBox(width: 10),
              Expanded(
                flex: Get.currentRoute == RouteName.purchase ? 4 : 3,
                child: Get.currentRoute == RouteName.purchase
                    ? CustomTextField(
                  title: costN,
                  index: index,
                )
                    : Text(
                  getFormattedNumberWithComa(
                      getProductPrice(index: index)),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              sizedBox(width: 10),
              Expanded(
                flex: 3,
                child: Text(
                  getFormattedNumberWithComa(
                      getProductTotalPrice(index: index)),
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
