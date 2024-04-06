import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/report/report_functions.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/report/report_data.dart';
import 'package:my_inventory/payment_report/ui/payment_report_header.dart';
import 'package:my_inventory/purchase_report/ui/purchase_report_summary.dart';

import 'package:my_inventory/core/ui/report/report_selected_date_summary.dart';
import 'package:my_inventory/payment_report/controller/payment_report_controller.dart';

class PaymentReport extends StatelessWidget {
  const PaymentReport({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PaymentReportController());

    return GetBuilder<PaymentReportController>(builder: (context) {
      bool hasReportDate =
          PaymentReportController.to.displayStartDate != null &&
              PaymentReportController.to.displayEndDate != null;
      return BodyWrapper(
        pageName: paymentReportN,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: getReportWidth(),
                    child: CustomScrollView(
                      slivers: [
                        SliverStickyHeader(
                          header: Container(
                            alignment: Alignment.centerLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 2),
                              child: PaymentReportHeader(),
                            ),
                          ),
                          sliver: SliverList.separated(
                            itemBuilder: (context, index) =>
                                ReportData(index: index),
                            separatorBuilder: (context, index) => const Divider(
                              height: 0,
                            ),
                            itemCount: PaymentReportController
                                .to.paymentReportModels.length,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: hasReportDate
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.end,
                  children: [
                    if (hasReportDate)
                      Expanded(
                        child: ReportSelectedDateSummary(
                          startDate:
                          PaymentReportController.to.displayStartDate!,
                          endDate: PaymentReportController.to.displayEndDate!,
                        ),
                      ),
                    PurchaseReportSummary(
                      totalCost: PaymentReportController.to.totalCost,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
