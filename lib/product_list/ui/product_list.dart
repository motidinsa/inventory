import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/product_list/controller/product_list_controller.dart';

import '../../core/model/product/product_database_model.dart';
import '../../main.dart';
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
        child: StreamBuilder<List<ProductDatabaseModel>>(
            stream:
                isar.productDatabaseModels.where().watch(fireImmediately: true),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                AlertDialog(
                  content: Text(snapshot.error.toString()),
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView(
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
                        productModel: snapshot.data![index],
                        index: index,
                      ),
                      itemCount: snapshot.data!.length,
                      separatorBuilder: (ctx, index) => sizedBox(height: 20),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
