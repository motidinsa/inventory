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
  Sales({super.key});

  final SalesController salesController = Get.put(SalesController());
  final AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: salesN,
      body: Form(
        key: appController.formKey,
        child: ListView(
          children: [
            ElevatedCard(
              horizontalMargin: 10,
              verticalMargin: 20,
              blurRadius: 10,
              horizontalPadding: 20,
              child: GetBuilder<SalesController>(builder: (_) {
                return ProductProfileInfo(
                  page: PageName.sales,
                );
              }),
            ),
            const ProductTableTitles(
              currentPage: salesN,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) => ProductItem(
                index: index,
                currentPage: salesN,
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
            const ProductPriceSummary(currentPage: salesN),
            sizedBox(height: 5),
             const PaymentOptions(),
            ActionButton(redirectFrom: salesN)
          ],
        ),
      ),
    );
  }
}
