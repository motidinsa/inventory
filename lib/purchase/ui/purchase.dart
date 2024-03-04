import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';

import '../../core/functions/widget_functions.dart';
import '../../core/model/page_name_enum.dart';
import '../../core/ui/elevated_card.dart';
import '../../core/ui/product/product_item.dart';
import '../../core/ui/product/product_price_summary.dart';
import '../../core/ui/product/product_profile_info.dart';
import '../../core/ui/product/product_table_titles.dart';
import '../../core/ui/save_button.dart';

class Purchase extends StatelessWidget {
  Purchase({super.key});

  final PurchaseController purchaseController = Get.put(PurchaseController());
  final AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: purchaseN(),
      body: Obx(() {
        return Form(
          key: appController.formKey,
          child: ListView(
            children: [
              const ElevatedCard(
                horizontalMargin: 10,
                verticalMargin: 20,
                blurRadius: 10,
                horizontalPadding: 20,
                child: ProductProfileInfo(page: PageName.purchase),
              ),
              ProductTableTitles(
                currentPage: purchaseN(),
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
          ),
        );
      }),
    );
  }
}
