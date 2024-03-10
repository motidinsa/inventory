import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:my_inventory/add_product/ui/add_product_image.dart';
import 'package:my_inventory/add_product/ui/add_product_price_input.dart';
import 'package:my_inventory/add_product/ui/add_product_title_with_textfield.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';

import '../controller/edit_controller.dart';

class EditProduct extends StatelessWidget {
  final ProductDatabaseModel productDatabaseModel;

  EditProduct({super.key, required this.productDatabaseModel});

  final List<String> titleList = [
    productN(),
    descriptionN(),
    'image',
    categoryN(),
    productIdN(),
    costN(),
    quantityOnHandN(),
    reorderQuantityN(),
    uomN()
  ];

  final AppController appController = Get.find();
  @override
  Widget build(BuildContext context) {
    Get.put(EditProductController(productDatabaseModel: productDatabaseModel));
    return LoaderOverlay(
      useDefaultLoading: false,
      overlayWidgetBuilder: (_) {
        return const Center(
          child: CircularProgressIndicator(
            strokeWidth: 3,
          ),
        );
      },
      child: BodyWrapper(
        pageName: editProductN,
        body: Form(
          key: appController.formKey,
          child: ListView(
            children: [
              sizedBox(height: 20),
              ElevatedCard(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) => [0, 1].contains(index)
                      ? ProductTextField(
                          currentPage: editProductN,
                          title: titleList[index],
                          labelText: titleList[index],
                        )
                      : index == 2
                          ? AddProductImage(
                              currentPage: editProductN,
                            )
                          : index == 5
                              ? Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Expanded(
                                      child: AddProductPriceInput(
                                        title: costN(),
                                        currentPage: editProductN,
                                      ),
                                    ),
                                    sizedBox(width: 20),
                                    Expanded(
                                      child: AddProductPriceInput(
                                        title: priceN(),
                                        currentPage: editProductN,
                                      ),
                                    ),
                                  ],
                                )
                              : AddProductTitleWithTextField(
                                  title: titleList[index],
                                  currentPage: editProductN,
                                ),
                  separatorBuilder: (ctx, index) => sizedBox(height: 20),
                  itemCount: titleList.length,
                ),
              ),
              ActionButton(
                redirectFrom: editProductN,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
