import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/model/action_button_enum.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/report/date_range_selection.dart';
import 'package:my_inventory/sales_report/controller/sales_report_controller.dart';

import '../../purchase_report/controller/purchase_report_controller.dart';
import '../constants/name_constants.dart';
import '../constants/widget_constants.dart';

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
            if (AppController.to.currentPages.last == salesReportN)
              GetBuilder<SalesReportController>(builder: (context) {
                return DateRangeSelection();
              })
            else
              GetBuilder<PurchaseReportController>(builder: (context) {
                return DateRangeSelection();
              }),
            sizedBox(height: 15),
            ActionButton(
              redirectFrom: dateSelect,
              actionButtonType: ActionButtonType.filter,
              padding: EdgeInsets.symmetric( horizontal: 20),
            )
          ],
        ),
      ),
    );
  }
}
