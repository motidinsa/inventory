import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/ui/custom_text_field_2.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';

import '../../core/constants/name_constants.dart';
import '../../core/functions/helper_functions.dart';
import '../../core/styles/styles.dart';
import '../../core/ui/product/profile_title_to_data.dart';

class PayCustomerCredit extends StatelessWidget {
  PayCustomerCredit({super.key});

  final DateFormat dateFormatter = DateFormat('MMM d, y');

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 15,
        bottom: 0,
      ),
      shape: smoothRectangleBorder(radius: 15),
      title: Text(
        CustomerDetailController.to.customerDatabaseModel.name,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 22,
        ),
      ),
      content: SizedBox(
        width: null,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GetBuilder<CustomerDetailController>(
                  builder: (_) {
                    return ProfileTitleToData(
                      title: dateN,
                      dataColor: Colors.green.shade700,
                      data: dateFormatter.format(getSelectedDate()),
                    );
                  }
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: CustomTextField2(title: 'cash')),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: CustomTextField2(title: 'transfer'))
                ],
              ),
              const SizedBox(height: 10),
              ElevatedButton(onPressed: () {}, child: Text('Pay credit'),   style: ElevatedButton.styleFrom(
                // padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
                backgroundColor: Colors.green.shade100,
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
