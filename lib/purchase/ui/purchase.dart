import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';
import 'package:my_inventory/core/ui/product/product_item.dart';
import 'package:my_inventory/core/ui/save_button.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';

import 'package:my_inventory/core/functions/widget_functions.dart';
import 'package:my_inventory/core/ui/product/product_price_summary.dart';
import 'package:my_inventory/core/ui/product/product_profile_info.dart';
import 'package:my_inventory/core/ui/product/product_table_titles.dart';

class Purchase extends StatelessWidget {
  Purchase({super.key});

  final PurchaseController purchaseController = Get.put(PurchaseController());

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: purchaseN(),
      body: Obx(() {
        return ListView(
          children: [
            const ElevatedCard(
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
            ProductTableTitles(
              currentPage: purchaseN(),
            ),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) => ProductItem(
                index: index,
                currentPage: purchaseN(),
              ),
              itemCount: purchaseController.purchaseModels.length,
            ),
            addIconButton(currentPage: purchaseN()),
            ProductPriceSummary(currentPage: purchaseN()),
            SaveButton(redirectFrom: purchaseN())
          ],
        );
      }),
    );
  }
}
