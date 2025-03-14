import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory/core/controller/app_controller.dart';
import 'package:inventory/core/model/action_button_enum.dart';
import 'package:inventory/core/routes/route_names.dart';
import 'package:inventory/core/ui/action_button.dart';
import 'package:inventory/core/ui/report/date_range_selection.dart';
import 'package:inventory/payment_report/controller/payment_report_controller.dart';
import 'package:inventory/sales_report/controller/sales_report_controller.dart';

import 'package:inventory/purchase_report/controller/purchase_report_controller.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/constants/widget_constants.dart';

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
            if (Get.currentRoute == RouteName.salesReport)
              GetBuilder<SalesReportController>(builder: (context) {
                return  DateRangeSelection();
              })
            else if (Get.currentRoute == RouteName.purchaseReport)
              GetBuilder<PurchaseReportController>(builder: (context) {
                return  DateRangeSelection();
              })   else if (Get.currentRoute == paymentReportN)
              GetBuilder<PaymentReportController>(builder: (context) {
                return  DateRangeSelection();
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
