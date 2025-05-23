import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:get/get.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/functions/report/report_functions.dart';
import 'package:inventory/core/ui/body_wrapper.dart';
import 'package:inventory/core/ui/report/report_data.dart';
import 'package:inventory/purchase_report/ui/purchase_report_summary.dart';


import 'package:inventory/inventory_report/controller/inventory_report_controller.dart';
import 'package:inventory/inventory_report/ui/inventory_report_header.dart';

class InventoryReport extends StatelessWidget {
  const InventoryReport({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder<InventoryReportController>(builder: (context) {
      bool hasReportDate =
          InventoryReportController.to.displayStartDate != null &&
              InventoryReportController.to.displayEndDate != null;
      return BodyWrapper(
        pageName: inventoryReportN,
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
                              child: InventoryReportHeader(),
                            ),
                          ),
                          sliver: SliverList.separated(
                            itemBuilder: (context, index) =>
                                ReportData(index: index),
                            separatorBuilder: (context, index) => const Divider(
                              height: 0,
                            ),
                            itemCount: InventoryReportController
                                .to.productDatabaseModels.length,
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
                    const Spacer(),
                    PurchaseReportSummary(
                      totalCost:InventoryReportController.to.totalCost,
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
