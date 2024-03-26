import 'package:flutter/material.dart';

class DateRangeSelection extends StatelessWidget {
  const DateRangeSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('data'),
            Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('From'),
                ), TextButton(
                  onPressed: () {},
                  child: Text('To'),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
