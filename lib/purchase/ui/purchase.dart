import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/widget_functions.dart';
import 'package:my_inventory/core/model/page_name_enum.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';
import 'package:my_inventory/core/ui/product/product_item.dart';
import 'package:my_inventory/core/ui/product/product_price_summary.dart';
import 'package:my_inventory/core/ui/product/product_profile_info.dart';
import 'package:my_inventory/core/ui/product/product_table_titles.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';

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
              addIconButton(),
              ProductPriceSummary(currentPage: purchaseN()),
              ActionButton(redirectFrom: purchaseN())
            ],
          ),
        );
      }),
    );
  }
}
