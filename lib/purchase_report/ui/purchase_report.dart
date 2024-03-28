import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/purchase_report/ui/purchase_report_summary.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import 'package:my_inventory/core/ui/report/report_data.dart';
import 'package:my_inventory/core/ui/report/report_header.dart';
import 'package:my_inventory/purchase_report/controller/purchase_report_controller.dart';

import '../../core/functions/report/report_functions.dart';

class PurchaseReport extends StatelessWidget {
  const PurchaseReport({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PurchaseReportController());
    return BodyWrapper(
        pageName: purchaseReportN,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    width: getReportWidth(),
                    margin: const EdgeInsets.symmetric(vertical: 3),
                    child: StickyHeader(
                      header: const ReportHeader(),
                      content: ListView.separated(
                        shrinkWrap: true,
                        reverse: true,
                        // physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => ReportData(
                          index: index,
                        ),
                        itemCount: PurchaseReportController
                            .to.purchaseReportModels.length,
                        separatorBuilder: (context, index) => const Divider(
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              PurchaseReportSummary(
                totalCost: PurchaseReportController.to.totalCost,
              )
            ],
          ),
        ));
  }
}
