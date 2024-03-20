import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';
import 'package:my_inventory/product_list/ui/mini_product_detail.dart';

class ProductList extends StatelessWidget {
  ProductList({super.key});

  final ProductListController productListController =
      Get.put(ProductListController());

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: productListN(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Obx(() => ListView(
              children: [
                sizedBox(height: 15),
                CustomTextField(
                  title: productListN(),
                ),
                // sizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: ListView.separated(
                    shrinkWrap: true,
                    reverse: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) => MiniProductDetail(
                      productModel: ProductListController.to.productList[index],
                      index: index,
                    ),
                    itemCount: ProductListController.to.productList.length,
                    separatorBuilder: (ctx, index) => sizedBox(height: 15),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
