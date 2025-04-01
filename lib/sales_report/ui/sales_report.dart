import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:get/get.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/functions/report/report_functions.dart';
import 'package:inventory/core/ui/body_wrapper.dart';
import 'package:inventory/core/ui/report/report_data.dart';
import 'package:inventory/core/ui/report/report_header.dart';
import 'package:inventory/sales_report/controller/sales_report_controller.dart';
import 'package:inventory/sales_report/ui/sales_report_summary.dart';

import 'package:inventory/core/ui/report/report_selected_date_summary.dart';

class SalesReport extends StatelessWidget {
  const SalesReport({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SalesReportController>(builder: (context) {
      bool hasReportDate = SalesReportController.to.displayStartDate != null &&
          SalesReportController.to.displayEndDate != null;
      return BodyWrapper(
          pageName: salesReportN,
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
                                child: ReportHeader(),
                              ),
                            ),
                            sliver: SliverList.separated(
                              itemBuilder: (context, index) =>
                                  ReportData(index: index),
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                height: 0,
                              ),
                              itemCount: SalesReportController
                                  .to.salesReportModels.length,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: hasReportDate
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.end,
                  children: [
                    if (hasReportDate)
                      ReportSelectedDateSummary(
                        startDate: SalesReportController.to.displayStartDate!,
                        endDate: SalesReportController.to.displayEndDate!,
                      ),
                    SalesReportSummary(
                      subtotal: SalesReportController.to.subtotalAmount,
                      discount: SalesReportController.to.totalDiscount,
                    ),
                  ],
                )
              ],
            ),
          ));
    });
  }
}
