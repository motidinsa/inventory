import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/action_button_enum.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/report/date_range_selection.dart';
import 'package:my_inventory/payment_report/controller/payment_report_controller.dart';
import 'package:my_inventory/sales_report/controller/sales_report_controller.dart';

import 'package:my_inventory/purchase_report/controller/purchase_report_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';

class DateFilter extends StatelessWidget {
  const DateFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: AppController.to.formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            if (Get.currentRoute == salesReportN)
              GetBuilder<SalesReportController>(builder: (context) {
                return const DateRangeSelection();
              })
            else if (Get.currentRoute == purchaseReportN)
              GetBuilder<PurchaseReportController>(builder: (context) {
                return const DateRangeSelection();
              })   else if (Get.currentRoute == paymentReportN)
              GetBuilder<PaymentReportController>(builder: (context) {
                return const DateRangeSelection();
              }),
            sizedBox(height: 15),
            const ActionButton(
              redirectFrom: dateSelectN,
              actionButtonType: ActionButtonType.filter,
              padding: EdgeInsets.symmetric(horizontal: 20),
            )
          ],
        ),
      ),
    );
  }
}
