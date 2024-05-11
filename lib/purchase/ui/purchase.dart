import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/widget_functions.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';
import 'package:my_inventory/core/ui/product/product_item.dart';
import 'package:my_inventory/core/ui/product/product_price_summary.dart';
import 'package:my_inventory/core/ui/product/product_profile_info.dart';
import 'package:my_inventory/core/ui/product/product_table_titles.dart';
import 'package:my_inventory/purchase/controller/purchase_controller.dart';

import '../../core/functions/helper_functions.dart';
import '../../core/ui/shadowed_container.dart';

class Purchase extends StatelessWidget {
  Purchase({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: purchaseN,
      body: GetBuilder<PurchaseController>(builder: (purchaseController) {
        if (purchaseController.isLoading) {
          context.loaderOverlay.show();
        } else {
          executeAfterBuild(() {
            context.loaderOverlay.hide();
          });
        }
        return Form(
          key: AppController.to.formKey,
          autovalidateMode: purchaseController.isSubmitButtonPressed
              ? AutovalidateMode.always
              : null,
          child: ListView(
            children: [
              ShadowedContainer(
                child: ProductProfileInfo(),
                horizontalMargin: 15,
                verticalMargin: 20,verticalPadding: 15,
                horizontalPadding: 20,
              ),
              GetBuilder<PurchaseController>(builder: (purchaseController) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) => ProductItem(
                    index: index,
                  ),
                  itemCount: purchaseController.purchaseModels.length,
                );
              }),
              addIconButton(),
              const ProductPriceSummary(),
              const ActionButton(redirectFrom: purchaseN)
            ],
          ),
        );
      }),
    );
  }
}
