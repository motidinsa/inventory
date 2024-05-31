import 'package:flutter/material.dart';

import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

import '../custom_text_field_2.dart';

class DateRangeSelection extends StatelessWidget {
   DateRangeSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          SizedBox(
            width: 130,
            child: CustomTextField2(
              title: fromN,
              // labelText: fromN,
            )),
        sizedBox(width: 25),
          Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Text(toN,
            //     style: TextStyle(
            //       color: Colors.green.shade800,
            //       fontWeight: FontWeight.bold,
            //     )),
            // sizedBox(height: 10),
            SizedBox(width: 130, child: CustomTextField(title: toN,labelText: toN,)),
          ],
        ),
      ],
    );
  }
}
