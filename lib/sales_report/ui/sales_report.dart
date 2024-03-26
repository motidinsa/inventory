import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/sales_report/constants/sales_report_constants.dart';
import 'package:my_inventory/sales_report/controller/sales_report_controller.dart';
import 'package:my_inventory/sales_report/ui/sales_report_data.dart';
import 'package:my_inventory/sales_report/ui/sales_report_header.dart';
import 'package:my_inventory/sales_report/ui/sales_report_summary.dart';
import 'package:sticky_headers/sticky_headers.dart';

class SalesReport extends StatelessWidget {
  const SalesReport({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SalesReportController());
    return BodyWrapper(
      pageName: salesReportN,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: totalWidthSR,
                margin: const EdgeInsets.symmetric(vertical: 3),
                child: StickyHeader(
                  header: const SalesReportHeader(),
                  content: ListView.separated(
                    shrinkWrap: true,
                    reverse: true,
                    // physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => SalesReportData(
                      salesReportModel:
                      SalesReportController.to.salesReportModels[index],
                    ),
                    itemCount:
                    SalesReportController.to.salesReportModels.length,
                    separatorBuilder: (context, index) => const Divider(
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SalesReportSummary(
            subtotal: SalesReportController.to.subtotal,
            discount: SalesReportController.to.discount,
          )
        ],
      )
    );
  }
}