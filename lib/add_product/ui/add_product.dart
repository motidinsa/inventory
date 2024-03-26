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

class AddProduct extends StatelessWidget {
  AddProduct({super.key});

  final List<String> titleList = [
    productN,
    descriptionN,
    imageN,
    categoryN,
    productIdN,
    costN,
    quantityOnHandN,
    reorderQuantityN,
    uomSN
  ];

  final AddProductController addProductController =
      Get.put(AddProductController());
  // final AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
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
        pageName: addProductN,
        body: Form(
          key: AppController.to.formKey,
          child: ListView(
            children: [
              sizedBox(height: 20),
              GetBuilder<AddProductController>(
                builder: (context) {
                  return ElevatedCard(
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (ctx, index) => [0, 1].contains(index)
                          ? CustomTextField(
                        title: titleList[index],
                        labelText: titleList[index],
                      )
                          : index == 2
                          ? const AddProductImage(
                        currentPage: addProductN,
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
                          Expanded(
                            child: AddProductPriceInput(
                              title: priceN(),
                            ),
                          ),
                        ],
                      )
                          : AddProductTitleWithTextField(
                        title: titleList[index],
                        currentPage: addProductN,
                      ),
                      separatorBuilder: (ctx, index) => sizedBox(height: 20),
                      itemCount: titleList.length,
                    ),
                  );
                }
              ),
              ActionButton(
                redirectFrom: addProductN,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
