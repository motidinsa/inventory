import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:smooth_corner/smooth_corner.dart';

import 'package:my_inventory/sales/functions/sales_functions.dart';
import 'package:my_inventory/sales/ui/product_item.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
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
            sizedBox(height: 10),
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
                    ))
              ],
            ),
            sizedBox(height: 10),
            const Text('Customer details:'),
            sizedBox(height: 5),
            const Text('Tel: 09785836845'),
            sizedBox(height: 5),
            const Text('Email: xyz@gmail.com'),
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
              itemCount: salesController.salesModel.length,
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
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('Subtotal'),
                      sizedBox(width: 5),
                      Text(
                        getSalesSubtotal(),
                        style: const TextStyle(),
                      )
                    ],
                  ),
                  sizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('Discount'),
                      sizedBox(width: 5),
                      const Text(
                        '45',
                        style: TextStyle(),
                      )
                    ],
                  ),
                  sizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('Total'),
                      sizedBox(width: 5),
                      Text(
                        getSalesTotal(),
                        style: const TextStyle(),
                      )
                    ],
                  ),
                  sizedBox(height: 5),
                ],
              ),
            ),
            sizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(onPressed: () {}, child: const Text('Cash')),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Transfer'),
                  ),
                ],
              ),
            ),
            sizedBox(height: 10),
            Center(
              child:
                  OutlinedButton(onPressed: () {}, child: const Text('Credit')),
            )
          ],
        );
      }),
    );
  }
}
