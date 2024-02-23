import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_product/controller/add_product_controller.dart';
import 'package:my_inventory/add_product/ui/add_product_price_input.dart';
import 'package:my_inventory/add_product/ui/add_product_title_with_textfield.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';

import 'package:my_inventory/core/ui/body_wrapper.dart';
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
  // final AddProductController? addProductController =
  //     Get.find();

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: addProductN(),
      body: ListView(
        children: [
          sizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
                borderRadius: smoothBorderRadius(radius: 20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15,
                    spreadRadius: 0,
                  ),
                ]),
            child: Card(
              surfaceTintColor: Colors.white,
              shape: smoothRectangleBorder(radius: 20),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) => [0, 1].contains(index)
                      ? ProductTextField(
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
            ),
          ),
          SaveButton(
            redirectFrom: addProductN(),
          ),
        ],
      ),
    );
  }
}
