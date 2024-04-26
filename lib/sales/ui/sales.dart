import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/page_name_enum.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';
import 'package:my_inventory/core/ui/product/product_item.dart';
import 'package:my_inventory/core/ui/product/product_price_summary.dart';
import 'package:my_inventory/core/ui/product/product_profile_info.dart';
import 'package:my_inventory/core/ui/product/product_table_titles.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:my_inventory/sales/ui/payment_options.dart';

class Sales extends StatelessWidget {
  const Sales({super.key});

  // final AppController appController = Get.find();
  // final SalesController salesController = Get.find();

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: salesN,
      body: Form(
        key: AppController.to.formKey,
        child: ListView(
          children: [
            ElevatedCard(
              horizontalMargin: 10,
              verticalMargin: 10,
              blurRadius: 10,
              horizontalPadding: 20,
              verticalPadding: 15,
              child: GetBuilder<SalesController>(builder: (_) {
                return ProductProfileInfo();
              }),
            ),
            const ProductTableTitles(
              currentRoute: salesN,
            ),
            SizedBox(
              height: 5,
            ),
            GetBuilder<SalesController>(
              builder: (context) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) => ProductItem(
                    index: index,
                  ),
                  itemCount: SalesController.to.salesModels.length,
                );
              }
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
            GetBuilder<SalesController>(
              builder: (_) {
                return  ProductPriceSummary();
              }
            ),
            sizedBox(height: 5),
             PaymentOptions(),
            ActionButton(redirectFrom: salesN)
          ],
        ),
      ),
    );
  }
}
