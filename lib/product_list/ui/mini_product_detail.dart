import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/product_list/ui/product_detail_single_description.dart';
import 'package:smooth_corner/smooth_corner.dart';

import '../../core/functions/core_functions.dart';

class MiniProductDetail extends StatelessWidget {
  final ProductDatabaseModel productModel;

  const MiniProductDetail({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      shape: smoothRectangleBorder(radius: 12),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            productModel.localImagePath != null
                ? ClipRRect(
                    borderRadius: smoothBorderRadius(radius: 12),
                    child: Image.file(
                      File(productModel.localImagePath!),
                      width: 100,
                    ),
                  )
                : Container(
                    width: 100,
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'No image found',
                          style: TextStyle(color: Colors.red.shade600),
                          textAlign: TextAlign.center,
                        ),
                        // sizedBox(height: 5),
                        TextButton(
                          onPressed: () => onAddImagePressed(
                            context: context,
                            currentPage: productListN(),
                            productId: productModel.id,
                          ),
                          style: TextButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                          child: Text('Add image'),
                        ),
                      ],
                    ),
                  ),
            sizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              productModel.productName,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: bold(),
                                fontSize: 17,
                              ),
                            ),
                          ),
                          sizedBox(height: 5),
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
                          sizedBox(height: 5),
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
                      )
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
            // Row(
            //   children: [
            //     Text('Product ID: ${productModel.id}',overflow: TextOverflow.ellipsis,),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
