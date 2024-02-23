import 'package:flutter/material.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:smooth_corner/smooth_corner.dart';

import 'package:my_inventory/core/constants/widget_constants.dart';

class MiniProductDetail extends StatelessWidget {
  final IconData iconData;
  final String name;
  final String id;
  final String noOfPieces;
  final String price;

  const MiniProductDetail({
    super.key,
    required this.iconData,
    required this.name,
    required this.id,
    required this.noOfPieces,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20),
      shape: smoothRectangleBorder(radius: 12),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  iconData,
                  size: 30,
                ),
                sizedBox(width: 20),
                Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: bold(),
                        fontSize: 17,
                      ),
                    ),
                    sizedBox(height: 5),

                    SmoothContainer(
                        // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        padding: EdgeInsets.all(8),
                        color: Colors.grey.shade300,
                        smoothness: 1,
                        side: BorderSide(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(12),
                        alignment: Alignment.center,
                        child: Text(
                          '$noOfPieces pcs',
                          style: TextStyle(color: Colors.grey.shade800),
                        )),
                    sizedBox(height: 5),
                    Text('Product ID: $id'),
                    // sizedBox(height: 5),
                  ],
                )
              ],
            ),
            Text(
              'ETB $price',
              style: TextStyle(
                fontWeight: bold(),
                fontSize: 17,
              ),
            )
          ],
        ),
      ),
    );
  }
}
