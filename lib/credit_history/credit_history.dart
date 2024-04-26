import 'package:flutter/material.dart';

import '../core/ui/body_wrapper.dart';

class CreditHistory extends StatelessWidget {
  const CreditHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: 'Credit history',
      body: Card(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Text('Date added cdsbu')),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: Text('Date added cdsbu')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
