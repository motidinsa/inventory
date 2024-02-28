import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/save_button.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:my_inventory/sales/functions/sales_functions.dart';
import 'package:my_inventory/core/ui/product/product_item.dart';
import 'package:smooth_corner/smooth_corner.dart';

import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';

import '../../core/ui/product/product_price_summary.dart';
import '../../core/ui/product/product_profile_info.dart';
import '../../core/ui/product/product_table_titles.dart';

class Sales extends StatelessWidget {
  Sales({super.key});

  final SalesController salesController = Get.put(SalesController());

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: salesN(),
      body: Obx(() {
        return ListView(
          children: [
            ElevatedCard(
              horizontalMargin: 10,
              verticalMargin: 20,
              blurRadius: 10,
              horizontalPadding: 20,
              child: ProductProfileInfo(),
            ),
            sizedBox(height: 10),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            ProductTableTitles(currentPage: salesN(),),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) => ProductItem(
                index: index,
                currentPage: salesN(),
              ),
              itemCount: salesController.salesModels.length,
            ),
            Center(
              child: IconButton(
                onPressed: () => salesController.addSalesProduct(),
                icon: const Icon(
                  Icons.add,
                  color: Colors.green,
                  size: 27,
                ),
              ),
            ),
            ProductPriceSummary(currentPage: salesN()),
            SaveButton(redirectFrom: salesN())
          ],
        );
      }),
    );
  }
}
