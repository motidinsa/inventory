import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:inventory/add_product/controller/add_product_controller.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/constants/widget_constants.dart';
import 'package:inventory/core/controller/app_controller.dart';
import 'package:inventory/core/ui/action_button.dart';
import 'package:inventory/core/ui/add_image/add_product_image.dart';
import 'package:inventory/core/ui/body_wrapper.dart';
import 'package:inventory/core/ui/shadowed_container.dart';

import 'package:inventory/core/ui/custom_text_field_2.dart';

import '../../core/functions/helper_functions.dart';
import '../../core/functions/image/image_functions.dart';

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
      body: PopScope(
        onPopInvokedWithResult: (isPopped,result) {
          if (isPopped) {
            clearTemporaryFile();
          }
        },
        child:
            GetBuilder<AddProductController>(builder: (addProductController) {
          if (addProductController.isLoading) {
            executeAfterBuild(() {
              context.loaderOverlay.show();
            });
          } else {
            executeAfterBuild(() {
              context.loaderOverlay.hide();
            });
          }
          return Form(
            key: AppController.to.formKey,
            autovalidateMode: addProductController.isSubmitButtonPressed
                ? AutovalidateMode.always
                : null,
            child: ListView(
              children: [
                const SizedBox(height: 20),
                ShadowedContainer(
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) => index == 4
                        ? const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: CustomTextField2(
                                  title: costN,
                                  // labelText: title,
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: CustomTextField2(
                                  title: priceN,
                                  // labelText: title,
                                ),
                              ),
                            ],
                          )
                        : index == 8
                            ? AddProductImage()
                            : CustomTextField2(
                                title: titleList[index],
                                // labelText: titleList[index],
                              ),
                    separatorBuilder: (ctx, index) => SizedBox(height: 15),
                    itemCount: titleList.length,
                  ),
                ),
                const ActionButton(),
              ],
            ),
          );
        }),
      ),
    );
  }
}
