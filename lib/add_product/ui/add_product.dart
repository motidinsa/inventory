import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/add_product/ui/add_product_price_input.dart';
import 'package:my_inventory/add_product/ui/add_product_title_with_textfield.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';
import 'package:my_inventory/core/ui/save_button.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final List<String> items = [
    'Product 1',
    'Product 2',
    'Product 3',
    'Product 4',
  ];
  final List<String> items2 = [
    'Pcs',
    'Kg',
    'Lt',
  ];
  String? selectedValue;
  String? selectedValue2;
  final List<String> titleList = [
    productN(),
    descriptionN(),
    categoryN(),
    productIdN(),
    costN(),
    quantityOnHandN(),
    reorderQuantityN(),
    uomN()
  ];
  final AddProductController addProductController =
      Get.put(AddProductController());
  final AppController appController = Get.find();
  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      useDefaultLoading: false,
      overlayWidgetBuilder: (_) {
        return const Center(
            child: CircularProgressIndicator(
          strokeWidth: 3,
        ));
      },
      child: Obx(() {
        if (addProductController.isLocalSaveLoading.isTrue) {
          context.loaderOverlay.show();
        } else {
          context.loaderOverlay.hide();
        }

        return BodyWrapper(
          pageName: addProductN(),
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
                            currentPage: addProductN(),
                            title: titleList[index],
                            labelText: titleList[index],
                          )
                        : index != 4
                            ? AddProductTitleWithTextField(
                                title: titleList[index],
                              )
                            : Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: AddProductPriceInput(
                                      title: costN(),
                                    ),
                                  ),
                                  sizedBox(width: 20),
                                  Expanded(
                                    child: AddProductPriceInput(
                                      title: priceN(),
                                    ),
                                  ),
                                ],
                              ),
                    separatorBuilder: (ctx, index) => sizedBox(height: 20),
                    itemCount: titleList.length,
                  ),
                ),
                SaveButton(
                  redirectFrom: addProductN(),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
