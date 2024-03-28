import 'package:flutter/material.dart';

class DateRangeSelection extends StatelessWidget {
  const DateRangeSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('data'),
            Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('From'),
                ), TextButton(
                  onPressed: () {},
                  child: const Text('To'),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
