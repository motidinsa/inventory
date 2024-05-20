import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/add_sales/controller/add_sales_controller.dart';

import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/core/ui/shadowed_container.dart';

import '../../core/ui/custom_text_field_2.dart';

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),

      child: ShadowedContainer(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
            SizedBox(height: 10),
        Column(
          children: [
             CustomTextField2(
              title: cashN,
            ),
            SizedBox(height: 10,),
             CustomTextField2(
              title: transferN,
            ),
            SizedBox(height: 10),
             CustomTextField2(
              title: creditN,
            ),
          ],
        ),
          ],
        ),
      ),
    );
  }
}
