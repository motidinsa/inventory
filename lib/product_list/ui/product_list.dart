import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';
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
        child: ListView(
          children: [
            sizedBox(height: 15),
            ProductTextField(
              currentPage: productListN(),
              title: productListN(),
            ),
            // sizedBox(height: 15),
            ValueListenableBuilder<Box<ProductDatabaseModel>>(
              valueListenable:
                  Hive.box<ProductDatabaseModel>('products').listenable(),
              builder: (context, box, _) {
                print(box.length);
                // productListController.productList(box.values.toList());
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: ListView.separated(
                    shrinkWrap: true,
                    reverse: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) => MiniProductDetail(
                      productModel: box.values.elementAt(index),
                      index: index,
                    ),
                    itemCount: box.values.length,
                    separatorBuilder: (ctx, index) => sizedBox(height: 20),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
