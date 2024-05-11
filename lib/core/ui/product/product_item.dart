import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/product/product_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

import 'package:my_inventory/core/routes/route_names.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';
import 'package:my_inventory/core/ui/shadowed_container.dart';

import '../custom_text_field_2.dart';

class ProductItem extends StatelessWidget {
  final int index;

  const ProductItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowedContainer(
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),blurRadius: 5,
      // surfaceTintColor: Colors.white,
      // blurRadius: 0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: CustomTextField2(
              title: Get.currentRoute,
              // index: index,
            ),
          ),
          sizedBox(width: 10),
          Expanded(
            // flex: 3,
            child: CustomTextField2(
              title: qtyN,
              // index: index,
            ),
          ),
          sizedBox(width: 10),
          Expanded(
            // flex: Get.currentRoute == RouteName.purchase ? 4 : 3,
            child: Get.currentRoute == RouteName.purchase
                ? CustomTextField2(
                    title: costN,
                    // index: index,
                  )
                : Text(
                    getFormattedNumberWithComa(getProductPrice(index: index)),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
          ),
          // sizedBox(width: 10),
          // Expanded(
          //   flex: 3,
          //   child: Text(
          //     getFormattedNumberWithComa(getProductTotalPrice(index: index)),
          //     textAlign: TextAlign.center,
          //     style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          //   ),
          // ),
        ],
      ),
    );
  }
}
