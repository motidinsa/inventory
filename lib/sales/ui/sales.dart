import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/sales/ui/product_select.dart';
import 'package:smooth_corner/smooth_corner.dart';

class Sales extends StatelessWidget {
  const Sales({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sales'),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(color: Colors.orange),
                          ),
                          sizedBox(width: 10),
                          Text('Feb 17th, 2024')
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Ref',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.orange),
                          ),
                          sizedBox(width: 10),
                          SmoothContainer(
                              padding: EdgeInsets.all(5),
                              side: BorderSide(width: 2),
                              child: Text('SO-0097'))
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
            Text('Customer:'),
            sizedBox(width: 20),
            SmoothContainer(
                padding: EdgeInsets.all(5),
                side: BorderSide(width: 2),
                child: Row(
                  children: [
                    Text('Alen Smith'),
                    sizedBox(width: 20),
                    Icon(Icons.people)
                  ],
                ))
          ],
        ),
        sizedBox(height: 10),
        Text('Customer details:'),
        sizedBox(height: 5),
        Text('Tel: 09785836845'),
        sizedBox(height: 5),
        Text('Email: xyz@gmail.com'),
        sizedBox(height: 10),
        Divider(
          thickness: 2,
          color: Colors.black,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Product',
                textAlign: TextAlign.center,
              ),
              flex: 2,
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
        Divider(
          thickness: 2,
          color: Colors.black,
        ),
        // sizedBox(height: 10),
        ProductSelect(),
        ProductSelect(),
        ProductSelect(),
        Center(child: IconButton(onPressed: () {}, icon: Icon(Icons.add))),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Subtotal'),
                  sizedBox(width: 5),
                  Text(
                    '345',
                    style: TextStyle(),
                  )
                ],
              ),
              sizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Discount'),
                  sizedBox(width: 5),
                  Text(
                    '45',
                    style: TextStyle(),
                  )
                ],
              ),
              sizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Total'),
                  sizedBox(width: 5),
                  Text(
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
              OutlinedButton(onPressed: () {}, child: Text('Cash')),
              OutlinedButton(
                onPressed: () {},
                child: Text('Transfer'),
              ),
            ],
          ),
        ),
        sizedBox(height: 10),
        Center(child: OutlinedButton(onPressed: () {}, child: Text('Credit')),)
      ],
    );
  }
}
