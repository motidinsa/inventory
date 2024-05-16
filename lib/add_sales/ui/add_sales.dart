import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';
import 'package:my_inventory/core/ui/product/product_item.dart';
import 'package:my_inventory/core/ui/product/product_price_summary.dart';
import 'package:my_inventory/core/ui/product/product_profile_info.dart';
import 'package:my_inventory/core/ui/product/product_table_titles.dart';
import 'package:my_inventory/add_sales/controller/add_sales_controller.dart';
import 'package:my_inventory/add_sales/ui/payment_options.dart';

import '../../core/ui/shadowed_container.dart';

class Sales extends StatelessWidget {
  const Sales({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: salesN,
      body: Form(
        key: AppController.to.formKey,
        child: ListView(
          children: [
            ShadowedContainer(
              child: ProductProfileInfo(),
              horizontalMargin: 10,
              verticalMargin: 15,
              verticalPadding: 15,
              horizontalPadding: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) => ProductItem(
                index: index,
              ),
              itemCount: SalesController.to.salesModels.length,
            ),
            Center(
              child: IconButton(
                onPressed: () => SalesController.to.addSalesProduct(),
                icon: const Icon(
                  Icons.add,
                  color: Colors.green,
                  size: 27,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(child: PaymentOptions()),
                  // SizedBox(width: 5),
                  Expanded(child: ProductPriceSummary()),


                ],
              ),
            ),
            const ActionButton(redirectFrom: salesN)
          ],
        ),
      ),
    );
  }
}
