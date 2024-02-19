import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/sales/ui/product_select.dart';
import 'package:smooth_corner/smooth_corner.dart';

class Sales extends StatelessWidget {
  const Sales({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Product',
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                  child: Text(
                'Qty',
                textAlign: TextAlign.center,
              )),
              Expanded(
                child: Text(
                  'Price',
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                  child: Text(
                'Total',
                textAlign: TextAlign.center,
              )),
            ],
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
          ),
          // sizedBox(height: 10),
          const ProductSelect(),
          const ProductSelect(),
          const ProductSelect(),
          Center(child: IconButton(onPressed: () {}, icon: const Icon(Icons.add))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('Subtotal'),
                    sizedBox(width: 5),
                    const Text(
                      '345',
                      style: TextStyle(),
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
                    const Text(
                      '3458',
                      style: TextStyle(),
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
            child: OutlinedButton(onPressed: () {}, child: const Text('Credit')),
          )
        ],
      ),
    );
  }
}
