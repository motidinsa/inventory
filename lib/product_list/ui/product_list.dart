import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:smooth_corner/smooth_corner.dart';

import 'package:my_inventory/product_list/ui/mini_product_detail.dart';

import 'package:my_inventory/core/constants/name_constants.dart';

import '../../add_product/controller/add_product_controller.dart';
import '../../core/ui/product/product_text_field.dart';
import '../controller/product_list_controller.dart';

class ProductList extends StatelessWidget {
  ProductList({super.key});

  final ProductListController productListController =
      Get.put(ProductListController());

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
        pageName: productListN(),
        body: ListView(
          children: [
            sizedBox(height: 15),
            ProductTextField(
              title: productListN(),
            ),
            sizedBox(height: 15),
            const MiniProductDetail(
              iconData: Icons.add_chart_sharp,
              id: '473r6t',
              name: 'Bic Pen',
              noOfPieces: '743',
              price: '7346',
            )
          ],
        ));
  }
}
