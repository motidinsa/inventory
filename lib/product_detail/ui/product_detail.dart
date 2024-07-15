import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/model/action_button_enum.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';
import 'package:my_inventory/core/ui/product/product_image.dart';
import 'package:my_inventory/edit_product/ui/edit_product.dart';
import 'package:my_inventory/product_detail/controller/product_detail_controller.dart';
import 'package:my_inventory/product_detail/functions/product_detail_functions.dart';
import 'package:my_inventory/product_list/ui/product_detail_single_description.dart';

import '../../core/ui/shadowed_container.dart';

class ProductDetail extends StatelessWidget {
  final ProductDatabaseModel productDatabaseModel =Get.arguments;
      // ProductDetailController.to.productDatabaseModel;
  // final int index;
  final DateFormat dateFormatter = DateFormat("MMM d, y");

  ProductDetail({super.key, });

  @override
  Widget build(BuildContext context) {
    Get.put(ProductDetailController(productDatabaseModel: productDatabaseModel));

    var titleToData = {
      categoryN:
          getProductCategoryName(id: productDatabaseModel.categoryId) ?? '',
      productIdN: productDatabaseModel.userAssignedProductId ?? '',
      costN: productDatabaseModel.cost,
      priceN: productDatabaseModel.price,
      quantityOnHandN: productDatabaseModel.quantityOnHand,
      reorderQuantityN: productDatabaseModel.reorderQuantity,
      uomSN: getUomName(id: productDatabaseModel.unitOfMeasurementId),
    };
    return BodyWrapper(
      pageName: productDetailN,
      body: GetBuilder<ProductDetailController>(builder: (_) {
        return ListView(
          children: [
            SizedBox(height: 20),
            ShadowedContainer(
              horizontalMargin: 20,
              padding:
                  EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 10),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          Get.toNamed(RouteName.editProduct);

                          // Get.to(() => EditProduct());
                        },
                        child: Row(
                          children: [
                            Text(
                              editN,
                              style: TextStyle(
                                  color: Colors.green.shade700,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 20),
                            Icon(
                              Icons.edit,
                              color: Colors.green.shade700,
                              size: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: ProductDetailSingleDescription(
                          title: dateAddedN,
                          description: dateFormatter
                              .format(productDatabaseModel.dateCreated),
                          dataColor: Colors.green.shade800,
                          titleColor: Colors.grey.shade700,
                          textAlign: TextAlign.end,
                          // titleFontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: ProductImage(
                          productId: productDatabaseModel.productId,
                          localImagePath: productDatabaseModel.localImagePath,
                          imageWidth: 100,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                productDatabaseModel.productName,
                                style: TextStyle(
                                  fontWeight: bold(),
                                  fontSize: 18,
                                  color: Colors.grey.shade800,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(height: 10),
                              ProductDetailSingleDescription(
                                title: descriptionN,
                                description:
                                    productDatabaseModel.description ?? '',
                                titleColor: Colors.green.shade800,
                                dataColor: Colors.grey.shade600,
                                // titleFontSize: 18,
                                // dataFontSize: 17,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 3),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 0),
                    child: Card(
                      elevation: 3,
                      // surfaceTintColor: Colors.white,
                      shape: smoothRectangleBorder(
                        radius: 15,
                        side: const BorderSide(
                          color: Colors.green,
                          width: .5,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (ctx, index) {
                            List keys = titleToData.keys.toList();
                            String title = keys[index];
                            String data = titleToData[title].toString();
                            return ProductDetailSingleDescription(
                              title: title,
                              description: data,
                              titleFontSize: 18,
                              dataFontSize: 17,
                              titleColor: Colors.green.shade800,
                              dataColor: Colors.grey.shade700,
                            );
                          },
                          separatorBuilder: (ctx, index) =>
                              sizedBox(height: 20),
                          itemCount: titleToData.length,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // const ActionButton(
            //   redirectFrom: productDetailN,
            //   actionButtonType: ActionButtonType.delete,
            //   // productId: productDatabaseModel.productId,
            // ),
          ],
        );
      }),
    );
  }
}
