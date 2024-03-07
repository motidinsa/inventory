import 'package:flutter/material.dart';
import 'package:my_inventory/core/model/product/product_database_model.dart';

import '../../core/constants/name_constants.dart';
import '../../core/constants/widget_constants.dart';
import '../../core/ui/body_wrapper.dart';
import '../../core/ui/elevated_card.dart';
import '../../core/ui/product/product_image.dart';
import '../../core/ui/product/profile_title_to_data.dart';

class ProductDetail extends StatelessWidget {
  final ProductDatabaseModel productDatabaseModel;

  ProductDetail({super.key, required this.productDatabaseModel});

  final List<String> titleList = [
    // productN(),
    // descriptionN(),
    // 'image',
    categoryN(),
    productIdN(),
    costN(),
    priceN(),
    quantityOnHandN(),
    reorderQuantityN(),
    uomN()
  ];

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: productDetailN,
      body: ElevatedCard(
        verticalPadding: 10,
        verticalMargin: 20,
        child: ListView(
          shrinkWrap: true,
          children: [
            // sizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'Edit',
                          style: TextStyle(
                              color: Colors.green.shade700,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        sizedBox(width: 20),
                        Icon(
                          Icons.edit,
                          color: Colors.green.shade700,
                        ),
                      ],
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.date_range_outlined),
                Align(
                  alignment: Alignment.centerRight,
                  child: ProfileTitleToData(
                    alignment: MainAxisAlignment.end,
                    dataColor: Colors.green,
                    title: 'Date added',
                    data: '5r73r53475765',
                  ),
                ),
              ],
            ),
            sizedBox(height: 10),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ProductImage(
                  productId: productDatabaseModel.id,
                  currentPage: productListN(),
                  localImagePath: productDatabaseModel.localImagePath,
                ),
                sizedBox(width: 10),
                LayoutBuilder(
                  builder: (context, constraints) {
                    return  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('cdnsjcbdsj csdhcbjc csdjh'),
                      ],
                    );
                  },
                )

              ],
            ),
            sizedBox(height: 10),

            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) => Text(titleList[index]),
              separatorBuilder: (ctx, index) => sizedBox(height: 20),
              itemCount: titleList.length,
            ),
            // SaveButton(
            //   redirectFrom: addProductN(),
            // ),
          ],
        ),
      ),
    );
  }
}
