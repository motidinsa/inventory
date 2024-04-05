import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

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
              GetBuilder<SalesController>(
                builder: (context) {
                  return Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(cashN),
                            sizedBox(height: 5),
                            CustomTextField(
                              title: cashN,
                            ),
                          ],
                        ),
                      ),
                      sizedBox(width: 15),
                      Expanded(
                        child: Column(
                          children: [
                            Text(transferN),
                            sizedBox(height: 5),
                            CustomTextField(
                              title: transferN,
                            ),
                          ],
                        ),
                      ),
                      sizedBox(width: 15),
                      Expanded(
                        child:  Column(
                          children: [
                            Text(creditN),
                            sizedBox(height: 5),
                            CustomTextField(
                              title: creditN,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
