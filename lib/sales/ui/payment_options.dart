import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';

import '../../core/constants/name_constants.dart';
import '../../core/ui/custom_text_field.dart';

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Payment mode'),
              sizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      title: cashN,
                      labelText: cashN,
                    ),
                  ),
                  sizedBox(width: 15),
                  Expanded(
                    child: CustomTextField(
                      title: transferN,
                      labelText: transferN,
                    ),
                  ),
                  sizedBox(width: 15),
                  Expanded(
                    child:  CustomTextField(
                      title: creditN,
                      labelText: creditN,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
