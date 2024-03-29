import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/report/report_data.dart';
import 'package:my_inventory/core/ui/report/report_header.dart';
import 'package:my_inventory/purchase_report/controller/purchase_report_controller.dart';
import 'package:my_inventory/purchase_report/ui/purchase_report_summary.dart';

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
                  child: SizedBox(
                    width: getReportWidth(),
                    child: CustomScrollView(
                      slivers: [
                        //CupertinoSliverRefreshControl(),
                        // SliverPersistentHeader(
                        //   pinned: true,
                        //   delegate: _SliverAppBarDelegate(
                        //     minHeight: 20.0,
                        //     maxHeight: 30.0,
                        //     child: Container(
                        //         color: Colors.red,
                        //         child: Center(child: Text("red header "))),
                        //   ),
                        // ),
                        // SliverAppBar(
                        //   title: ReportHeader(),
                        //   pinned: true,
                        //   automaticallyImplyLeading: false,
                        // ),

                        SliverStickyHeader(
                          header: Container(
                            // height: 60.0,
                            // color: Colors.lightBlue,
                            // padding: EdgeInsets.symmetric(horizontal: 16.0),
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: ReportHeader(),
                            ),
                          ),
                          //         sliver: SliverToBoxAdapter(
                          //           child: ListView.builder(
                          //             shrinkWrap: true,
                          //             scrollDirection: Axis.horizontal,
                          //             itemBuilder: (ctx, index) => ListTile(
                          //               leading: CircleAvatar(
                          //                 child: Text('0'),
                          //               ),
                          //               title: Text('List tile #$index'),
                          //             ),
                          //             itemCount: 40,
                          //           ),
                          //         )
                          sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) => ReportData(index: index),
                              childCount: PurchaseReportController
                                  .to.purchaseReportModels.length,
                            ),
                          ),
                        )

                        // SliverList(
                        //   delegate: SliverChildBuilderDelegate(
                        //     (context, i) => ListTile(
                        //       leading: CircleAvatar(
                        //         child: Text('0'),
                        //       ),
                        //       title: Text('List tile #$i'),
                        //     ),
                        //     childCount: 40,
                        //   ),
                        // )
                        // SliverList(
                        //   delegate: SliverChildListDelegate(
                        //     List.generate(
                        //         80,
                        //         (index) => Container(
                        //               padding: const EdgeInsets.all(5),
                        //               color: Colors.blueAccent.shade100,
                        //               child: const Text('bar'),
                        //             )),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
              PurchaseReportSummary(
                totalCost: PurchaseReportController.to.totalCost,
              )
            ],
          ),
        )
        // Center(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       Expanded(
        //         child: SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: Container(
        //             width: getReportWidth(),
        //             margin: const EdgeInsets.symmetric(vertical: 3),
        //             child:
        //                 // CustomScrollView(
        //                 //   slivers: [
        //     SliverStickyHeader(
        //         header: Container(
        //           height: 60.0,
        //           color: Colors.lightBlue,
        //           padding: EdgeInsets.symmetric(horizontal: 16.0),
        //           alignment: Alignment.centerLeft,
        //           child: Text(
        //             'Header #0',
        //             style: const TextStyle(color: Colors.white),
        //           ),
        //         ),
        //                 //         sliver: SliverToBoxAdapter(
        //                 //           child: ListView.builder(
        //                 //             shrinkWrap: true,
        //                 //             scrollDirection: Axis.horizontal,
        //                 //             itemBuilder: (ctx, index) => ListTile(
        //                 //               leading: CircleAvatar(
        //                 //                 child: Text('0'),
        //                 //               ),
        //                 //               title: Text('List tile #$index'),
        //                 //             ),
        //                 //             itemCount: 40,
        //                 //           ),
        //                 //         )
        //                         SliverList(
        //                           delegate: SliverChildBuilderDelegate(
        //                             (context, i) => ListTile(
        //                               leading: CircleAvatar(
        //                                 child: Text('0'),
        //                               ),
        //                               title: Text('List tile #$i'),
        //                             ),
        //                             childCount: 40,
        //                           ),
        //                         ),
        //                         )
        //                 //   ],
        //                 // )
        //                 StickyHeader(
        //               overlapHeaders: false,
        //               header: const ReportHeader(),
        //               content: ListView.separated(
        //                 shrinkWrap: true,
        //                 itemBuilder: (context, index) => ReportData(
        //                   index: index,
        //                 ),
        //                 itemCount: PurchaseReportController
        //                     .to.purchaseReportModels.length,
        //                 separatorBuilder: (context, index) => const Divider(
        //                   height: 0,
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //       PurchaseReportSummary(
        //         totalCost: PurchaseReportController.to.totalCost,
        //       )
        //     ],
        //   ),
        // ),
        );
  }
}
