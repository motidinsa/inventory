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

import '../../core/functions/helper_functions.dart';
import '../../core/ui/shadowed_container.dart';
import '../controller/add_purchase_controller.dart';

class AddPurchase extends StatelessWidget {
  AddPurchase({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: purchaseN,
      body: GetBuilder<AddPurchaseController>(builder: (addPurchaseController) {
        if (addPurchaseController.isLoading) {
          context.loaderOverlay.show();
        } else {
          executeAfterBuild(() {
            context.loaderOverlay.hide();
          });
        }
        return Form(
          key: AppController.to.formKey,
          autovalidateMode: addPurchaseController.isSubmitButtonPressed
              ? AutovalidateMode.always
              : null,
          child: ListView(
            shrinkWrap: true,
            children: [
              ShadowedContainer(
                child: ProductProfileInfo(),
                horizontalMargin: 10,
                verticalMargin: 20,
                verticalPadding: 15,
                horizontalPadding: 20,
              ),
              GetBuilder<AddPurchaseController>(builder: (addPurchaseController) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) => ProductItem(
                    index: index,
                  ),
                  itemCount: addPurchaseController.purchaseModels.length,
                );
              }),
              SizedBox(height: 5,),
              Row(
                children: [
                  Spacer(),
                  Expanded(
                    child: addIconButton(),
                  ),
                   SizedBox(height: 5,),
                   const ProductPriceSummary(),
                ],
              ),
              const ActionButton(redirectFrom: purchaseN)
            ],
          ),
        );
      }),
    );
  }
}
