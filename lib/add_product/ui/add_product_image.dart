import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';

import '../functions/add_product_functions.dart';

class AddProductImage extends StatelessWidget {
  const AddProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Product image\n(Optional)',textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: bold(), fontSize: 16, color: Colors.grey.shade600),
        ),
        sizedBox(width: 20),
        ElevatedButton(
          onPressed: ()=>onAddImagePressed(context:context),
          child: Column(
            children: [Icon(Icons.add), Text('Add image')],
          ),
          style: ElevatedButton.styleFrom(
            shape: smoothRectangleBorder(radius: 12),
            padding: EdgeInsets.all(16),
            backgroundColor: Colors.green.shade50,
          ),
        )
      ],
    );
  }
}
