import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';
import 'package:my_inventory/product_list/ui/mini_product_detail.dart';

import 'add_new_product.dart';

class ProductList extends StatelessWidget {
  ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: productListN,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GetBuilder<ProductListController>(
          builder: (productListController) {
            return
              productListController.isEmpty == true
                ? const AddNewProduct()
                :
            ListView(
              children: [
                SizedBox(height: 15),
                const CustomTextField(
                  title: productListN,
                ),
                // sizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child:productListController.productList.isEmpty
                      ? Center(
                    child: Text(
                      noProductFoundN,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey.shade700),
                    ),
                  )
                      :  ListView.separated(
                    shrinkWrap: true,
                    reverse: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) => MiniProductDetail(
                      productModel: productListController.productList[index],
                      index: index,
                    ),
                    itemCount: productListController.productList.length,
                    separatorBuilder: (ctx, index) => SizedBox(height: 15),
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}
