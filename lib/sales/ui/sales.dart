import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/save_button.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:my_inventory/sales/functions/sales_functions.dart';
import 'package:my_inventory/core/ui/product/product_item.dart';
import 'package:smooth_corner/smooth_corner.dart';

import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';

class Sales extends StatelessWidget {
  Sales({super.key});

  final SalesController salesController = Get.put(SalesController());

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: salesN(),
      body: Obx(() {
        return ListView(
          children: [
            ElevatedCard(
              horizontalMargin: 10,
              verticalMargin: 20,
              blurRadius: 10,
              horizontalPadding: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Sales'),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'Date',
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    sizedBox(width: 10),
                                    const Text('Feb 17th, 2024')
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'Ref',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    sizedBox(width: 10),
                                    SmoothContainer(
                                        padding: const EdgeInsets.all(5),
                                        side: const BorderSide(width: 2),
                                        child: const Text('SO-0097'))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  // sizedBox(height: 10),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Customer:'),
                      sizedBox(width: 20),
                      SmoothContainer(
                        padding: const EdgeInsets.all(5),
                        side: const BorderSide(width: 2),
                        child: Row(
                          children: [
                            const Text('Alen Smith'),
                            sizedBox(width: 20),
                            const Icon(Icons.people)
                          ],
                        ),
                      )
                    ],
                  ),
                  sizedBox(height: 10),
                  const Text('Customer details:'),
                  sizedBox(height: 5),
                  const Text('Tel: 09785836845'),
                  sizedBox(height: 5),
                  const Text('Email: xyz@gmail.com'),
                ],
              ),
            ),
            sizedBox(height: 10),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Expanded(
                    flex: 9,
                    child: Text(
                      'Product',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  sizedBox(width: 15),
                  const Expanded(
                      flex: 3,
                      child: Text(
                        'Qty',
                        textAlign: TextAlign.center,
                      )),
                  sizedBox(width: 15),
                  const Expanded(
                    flex: 3,
                    child: Text(
                      'Price',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  sizedBox(width: 15),
                  const Expanded(
                      flex: 3,
                      child: Text(
                        'Total',
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) => ProductItem(
                index: index,
              ),
              itemCount: salesController.salesModels.length,
            ),
            Center(
              child: IconButton(
                onPressed: () => salesController.addSalesProduct(),
                icon: const Icon(
                  Icons.add,
                  color: Colors.green,
                  size: 27,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Spacer(
                    flex: 6,
                  ),
                  Expanded(
                    flex: 6,
                    child: Card(
                      surfaceTintColor: Colors.white,
                      shape: smoothRectangleBorder(
                          radius: 15,
                          side: const BorderSide(color: Colors.green, width: .5)),
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Subtotal: ',
                                style: TextStyle(
                                    fontWeight: bold(),
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic),
                                // style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: getSalesSubtotal(),
                                    style:
                                        TextStyle(color: Colors.grey.shade600),
                                  ),
                                  // TextSpan(text: ' world!'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: ProductTextField(
                                currentPage: salesN(),
                                title: discountN(),
                                labelText: discountN(),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: '${totalN()}: ',
                                style: TextStyle(
                                  fontWeight: bold(),
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: getSalesTotal(),
                                    style:
                                        TextStyle(color: Colors.grey.shade600),
                                  ),
                                  // TextSpan(text: ' world!'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SaveButton(redirectFrom: salesN())
          ],
        );
      }),
    );
  }
}
