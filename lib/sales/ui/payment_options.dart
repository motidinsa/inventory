import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';

import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment mode',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold,
                ),
              ),
              sizedBox(height: 10),
              GetBuilder<SalesController>(builder: (context) {
                return Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            cashN,
                            style: TextStyle(
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
                          Text(
                            transferN,
                            style: TextStyle(
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          sizedBox(height: 5),
                            CustomTextField(
                            title: transferN,
                          ),
                        ],
                      ),
                    ),
                    sizedBox(width: 15),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            creditN,
                            style: TextStyle(
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          sizedBox(height: 5),
                            CustomTextField(
                            title: creditN,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
