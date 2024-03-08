import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/model/page_name_enum.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';
import 'package:my_inventory/core/ui/product/product_item.dart';
import 'package:my_inventory/core/ui/product/product_price_summary.dart';
import 'package:my_inventory/core/ui/product/product_profile_info.dart';
import 'package:my_inventory/core/ui/product/product_table_titles.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

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
            const ElevatedCard(
              horizontalMargin: 10,
              verticalMargin: 20,
              blurRadius: 10,
              horizontalPadding: 20,
              child: ProductProfileInfo(
                page: PageName.sales,
              ),
            ),
            // sizedBox(height: 5),
            // const Divider(
            //   thickness: 2,
            //   color: Colors.black,
            // ),
            ProductTableTitles(
              currentPage: salesN(),
            ),
            // const Divider(
            //   thickness: 2,
            //   color: Colors.black,
            // ),
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
            ActionButton(redirectFrom: salesN())
          ],
        );
      }),
    );
  }
}
