import 'package:flutter/material.dart';

import '../../constants/name_constants.dart';
import '../../constants/widget_constants.dart';
import '../custom_text_field.dart';

class DateRangeSelection extends StatelessWidget {
  const DateRangeSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Text(
            //   fromN,
            //   style: TextStyle(
            //     color: Colors.green.shade800,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // sizedBox(height: 10),
            SizedBox(
                width: 130,
                child: CustomTextField(
                  title: fromN,
                  labelText: fromN,
                )),
          ],
        ),
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
