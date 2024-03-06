import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';

import 'mini_product_detail.dart';

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
              sizedBox(height: 15),
              ValueListenableBuilder<Box<ProductDatabaseModel>>(
                valueListenable:
                    Hive.box<ProductDatabaseModel>('products').listenable(),
                builder: (context, box, _) {
                  return ListView.separated(
                    shrinkWrap: true,
                    reverse: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) => MiniProductDetail(
                        iconData: Icons.add_chart_sharp,
                        id: box.getAt(index)?.productId ?? '',
                        name: box.getAt(index)!.name,
                        noOfPieces: box.getAt(index)!.quantityOnHand.toString(),
                        price: '${box.getAt(index)!.price}'),
                    itemCount: box.length,
                    separatorBuilder: (ctx, index) => sizedBox(height: 20),
                  );
                },
              )
              // const MiniProductDetail(
              //   iconData: Icons.add_chart_sharp,
              //   id: '473r6t',
              //   name: 'Bic Pen',
              //   noOfPieces: '743',
              //   price: '7346',
              // )
            ],
          ),
        ));
  }
}
