import 'package:flutter/material.dart';
import 'package:inventory/core/constants/widget_constants.dart';
import 'package:inventory/core/model/product/product_database_model.dart';
import 'package:inventory/core/styles/styles.dart';
import 'package:inventory/product_detail/functions/product_detail_functions.dart';
import 'package:inventory/product_list/functions/product_list_functions.dart';
// import 'package:smooth_corner/smooth_corner.dart';

import 'package:inventory/core/functions/helper_functions.dart';
import 'package:smooth_corner_updated/smooth_corner.dart';

import '../../core/ui/product/product_image.dart';

class MiniProductDetail extends StatelessWidget {
  final ProductDatabaseModel productModel;
  final int index;

  const MiniProductDetail({
    super.key,
    required this.productModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onMiniProductDetailPressed(
          productDatabaseModel: productModel,
          index: index,
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 0),
        shape: smoothRectangleBorder(radius: 12),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          child: Row(
            children: [
              ProductImage(
                localImagePath: productModel.localImagePath, productId: productModel.productId,
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        productModel.productName,
                        style: TextStyle(
                            fontWeight: bold(),
                            fontSize: 17,
                            color: Colors.grey.shade800),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmoothContainer(
                          padding: const EdgeInsets.all(10),
                          color: Colors.green.shade200,
                          smoothness: 1,
                          side:
                              const BorderSide(color: Colors.white, width: 1.5),
                          borderRadius: BorderRadius.circular(12),
                          alignment: Alignment.center,
                          child: Text(
                            '${getFormattedNumberWithComa(productModel.quantityOnHand)} ${getUomName(
                              id: productModel.unitOfMeasurementId,
                            )}',
                            style: TextStyle(
                                color: Colors.white, fontWeight: bold()),
                          ),
                        ),
                        sizedBox(width: 10),
                        Expanded(
                          child: SizedBox(
                            // height: 35,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'ETB ${getFormattedNumberWithComa(productModel.price)}',
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: bold(),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              // Expanded(
              //   child: Align(
              //     alignment: Alignment.centerLeft,
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.only(left: 8),
              //           child: Text(
              //             productModel.productName,
              //             style: TextStyle(
              //                 fontWeight: bold(),
              //                 fontSize: 17,
              //                 color: Colors.grey.shade800),
              //           ),
              //         ),
              //         sizedBox(height: 5),
              //         Row(
              //           mainAxisSize: MainAxisSize.min,
              //           children: [
              //             SmoothContainer(
              //               padding: const EdgeInsets.all(10),
              //               color: Colors.green.shade200,
              //               smoothness: 1,
              //               side: const BorderSide(
              //                   color: Colors.white, width: 1.5),
              //               borderRadius: BorderRadius.circular(12),
              //               alignment: Alignment.center,
              //               child: Text(
              //                 '${getFormattedNumberWithComa(productModel.quantityOnHand)} ${getUomName(
              //                   id: productModel.unitOfMeasurementId,
              //                 )}',
              //                 style: TextStyle(
              //                     color: Colors.white, fontWeight: bold()),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // sizedBox(width: 15),
              //
              // Expanded(
              //   // flex: 4,
              //   child: Padding(
              //     padding: const EdgeInsets.only(right: 10),
              //     child: Text(
              //       'ETB ${getFormattedNumberWithComa(productModel.price)}',
              //       // textAlign: TextAlign.center,
              //       style: TextStyle(
              //         fontWeight: bold(),
              //         fontSize: 17,
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
