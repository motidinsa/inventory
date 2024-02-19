import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:smooth_corner/smooth_corner.dart';

import 'package:my_inventory/product_list/mini_product_detail.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text('Inventory'),
        sizedBox(height: 5),
        SmoothContainer(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            smoothness: 1,
            side: BorderSide(color: Colors.grey.shade300, width: 2),
            borderRadius: BorderRadius.circular(15),
            alignment: Alignment.center,
            child: const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search by product name or ID',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                ),
                style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
            )),
        sizedBox(height: 5),
        const MiniProductDetail(
          iconData: Icons.add_chart_sharp,
          id: '473r6t',
          name: 'Bic Pen',
          noOfPieces: '743',
          price: '7346',
        )
      ],
    );
  }
}
