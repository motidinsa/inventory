import 'package:flutter/material.dart';
import 'package:smooth_corner/smooth_corner.dart';

import '../core/constants/widget_constants.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(

          children: [
            Icon(iconData),
            sizedBox(width: 5),
            Column(
              children: [
                Text(name),
                sizedBox(height: 5),
                Text(id),
                sizedBox(height: 5),
                SmoothContainer(
                    // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    smoothness: 1,
                    side: BorderSide(color: Colors.grey.shade300, width: 2),
                    borderRadius: BorderRadius.circular(15),
                    child: Text(
                      noOfPieces,
                    ),
                    alignment: Alignment.center)
              ],
            )
          ],
        ),
        Text('ETB $price')
      ],
    );
  }
}
