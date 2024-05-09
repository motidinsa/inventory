import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/add_product/ui/add_product_price_input.dart';
import 'package:my_inventory/add_product/ui/add_product_title_with_textfield.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/add_image/add_product_image.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';
import 'package:my_inventory/core/ui/shadowed_container.dart';

import '../../core/ui/custom_text_field_2.dart';

class AddProduct extends StatelessWidget {
  AddProduct({super.key});

  final List<String> titleList = [
    productN,
    descriptionN,
    categoryN,
    productIdN,
    costN,
    uomSN,
    quantityOnHandN,
    reorderQuantityN,
    imageN,
  ];

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: addProductN,
      body: Form(
        key: AppController.to.formKey,
        child: ListView(
          children: [
            SizedBox(height: 20),
            GetBuilder<AddProductController>(builder: (context) {

              return ShadowedContainer(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) => index == 4
                      ? Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Expanded(
                              child: CustomTextField2(
                                title: costN,
                                // labelText: title,
                              ),
                            ),
                            SizedBox(width: 20),
                            const Expanded(
                              child: CustomTextField2(
                                title: priceN,
                                // labelText: title,
                              ),
                            ),
                          ],
                        )
                      : index == 8
                          ?  AddProductImage()
                          : CustomTextField2(
                              title: titleList[index],
                              // labelText: titleList[index],
                            ),
                  separatorBuilder: (ctx, index) => sizedBox(height: 15),
                  itemCount: titleList.length,
                ),
              );
            }),
            const ActionButton(),
          ],
        ),
      ),
    );
  }
}
