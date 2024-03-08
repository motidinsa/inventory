import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/product_list/ui/product_detail_single_description.dart';
import 'package:smooth_corner/smooth_corner.dart';

import 'package:my_inventory/core/ui/product/product_image.dart';
import 'package:my_inventory/product_list/functions/product_list_functions.dart';

class MiniProductDetail extends StatelessWidget {
  final ProductDatabaseModel productModel;

  const MiniProductDetail({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          onMiniProductDetailPressed(productDatabaseModel: productModel),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        shape: smoothRectangleBorder(radius: 12),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              ProductImage(
                productId: productModel.id,
                currentPage: productListN(),
                localImagePath: productModel.localImagePath,
              ),
              sizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        productModel.productName,
                        // overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: bold(),
                            fontSize: 17,
                            color: Colors.grey.shade800),
                      ),
                    ),
                    sizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SmoothContainer(
                              padding: const EdgeInsets.all(10),
                              color: Colors.green.shade200,
                              smoothness: 1,
                              side: const BorderSide(
                                  color: Colors.white, width: 1.5),
                              borderRadius: BorderRadius.circular(12),
                              alignment: Alignment.center,
                              child: Text(
                                '${getFormattedNumber(productModel.quantityOnHand)} ${productModel.unitOfMeasurement}',
                                style: TextStyle(
                                    color: Colors.white, fontWeight: bold()),
                              ),
                            ),
                          ],
                        ),
                        sizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'ETB ${getFormattedNumber(productModel.price)}',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: bold(),
                              fontSize: 17,
                            ),
                          ),
                        ),
                        sizedBox(width: 10),
                      ],
                    ),
                    if (productModel.description != null) ...[
                      sizedBox(height: 5),
                      ProductDetailSingleDescription(
                        title: descriptionN(),
                        description: productModel.description!,
                      )
                    ],
                    sizedBox(height: 10),
                    ProductDetailSingleDescription(
                      title: reorderQuantityN(),
                      description: productModel.reorderQuantity.toString(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
