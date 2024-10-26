import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/ui/custom_text_field_2.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';

import '../../core/constants/name_constants.dart';
import '../../core/functions/helper_functions.dart';
import '../../core/styles/styles.dart';
import '../../core/ui/product/profile_title_to_data.dart';
import '../functions/customer_detail_functions.dart';

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
                child: GetBuilder<CustomerDetailController>(builder: (_) {
                  return ProfileTitleToData(
                    title: dateN,
                    dataColor: Colors.green.shade700,
                    data: dateFormatter.format(getSelectedDate()),
                  );
                }),
              ),
              // const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius: smoothBorderRadius()),
                      child: const Text(
                        creditN,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${getFormattedNumberWithComa(CustomerDetailController.to.customerDatabaseModel.totalCreditAmount ?? 0)} birr',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(child: CustomTextField2(title: cashN)),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: CustomTextField2(title: transferN))
                ],
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => onPayCreditPressed(),
                child: Text(payCreditN),
                style: ElevatedButton.styleFrom(
                  // padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  backgroundColor: Colors.green.shade100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
