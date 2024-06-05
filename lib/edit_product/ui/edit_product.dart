import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:my_inventory/add_product/ui/add_product_price_input.dart';
import 'package:my_inventory/add_product/ui/add_product_title_with_textfield.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/add_image/add_product_image.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';
import 'package:my_inventory/edit_product/controller/edit_product_controller.dart';

import '../../core/functions/helper_functions.dart';
import '../../core/functions/image/image_functions.dart';

class EditProduct extends StatelessWidget {
  final ProductDatabaseModel productDatabaseModel;

  EditProduct({super.key, required this.productDatabaseModel});

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

  final AppController appController = Get.find();
  @override
  Widget build(BuildContext context) {
    // Get.put(EditProductController(productDatabaseModel: productDatabaseModel));
    return BodyWrapper(
      pageName: editProductN,
      body: PopScope(
        onPopInvoked: (isPopped) {
          if (isPopped) {
            clearTemporaryFile();
          }
        },
        child: GetBuilder<EditProductController>(builder: (editProductController) {
          if (editProductController.isLoading) {
            context.loaderOverlay.show();
          } else {
            executeAfterBuild(() {
              context.loaderOverlay.hide();
            });
          }
          return Form(
            key: AppController.to.formKey,
            autovalidateMode: editProductController.isSubmitButtonPressed?AutovalidateMode.always:null,

            child: ListView(
              children: [
                sizedBox(height: 20),
                ElevatedCard(
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) => [0, 1].contains(index)
                        ? CustomTextField(
                            title: titleList[index],
                            labelText: titleList[index],
                          )
                        : index == 2
                            ?  AddProductImage(
                              )
                            : index == 5
                                ? Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Expanded(
                                        child: AddProductPriceInput(
                                          title: costN,
                                        ),
                                      ),
                                      sizedBox(width: 20),
                                      const Expanded(
                                        child: AddProductPriceInput(
                                          title: priceN,
                                        ),
                                      ),
                                    ],
                                  )
                                : AddProductTitleWithTextField(
                                    title: titleList[index],
                                  ),
                    separatorBuilder: (ctx, index) => sizedBox(height: 20),
                    itemCount: titleList.length,
                  ),
                ),
                const ActionButton(
                  redirectFrom: editProductN,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
