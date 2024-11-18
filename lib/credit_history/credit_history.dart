import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/model/sales/sales_database_model.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';

import 'package:my_inventory/core/model/sales/sales_payment_database_model.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';

import '../core/functions/helper_functions.dart';

class CreditHistory extends StatelessWidget {
  const CreditHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: 'Credit history',
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        child: ListView.separated(
          itemBuilder: (ctx, index) {
            SalesPaymentDatabaseModel salesPaymentDatabaseModel =
                CustomerDetailController.to.salesPaymentDatabaseModels[index];
            return Card(
              surfaceTintColor: Colors.green,
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: RichText(
                          text: TextSpan(
                            text: 'Date: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey.shade700,
                              // fontStyle: FontStyle.italic
                            ),
                            // style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: DateFormat("MMM d, y").format(
                                    salesPaymentDatabaseModel.dateAdded),
                                style: TextStyle(color: Colors.green.shade800),
                              ),
                              // TextSpan(text: ' world!'),
                            ],
                          ),
                        )),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Colors.red.shade300,
                                    borderRadius: smoothBorderRadius()),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Credit: ',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      // color: Colors.red.shade300,
                                      // fontStyle: FontStyle.italic
                                    ),
                                    // style: DefaultTextStyle.of(context).style,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: getFormattedNumberWithComa(
                                            salesPaymentDatabaseModel.credit),
                                        // style: TextStyle(color: Colors.green.shade800),
                                      ),
                                      // TextSpan(text: ' world!'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: RichText(
                          text: TextSpan(
                            text: 'Cash: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey.shade700,
                              // fontStyle: FontStyle.italic
                            ),
                            // style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: getFormattedNumberWithComa(
                                    salesPaymentDatabaseModel.cash),
                                style: TextStyle(color: Colors.green.shade800),
                              ),
                              // TextSpan(text: ' world!'),
                            ],
                          ),
                        )),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: 'Transfer: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey.shade700,
                                // fontStyle: FontStyle.italic
                              ),
                              // style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                  text: getFormattedNumberWithComa(
                                      salesPaymentDatabaseModel.transfer),
                                  style:
                                      TextStyle(color: Colors.green.shade800),
                                ),
                                // TextSpan(text: ' world!'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (ctx, index) => const SizedBox(
            height: 3,
          ),
          itemCount:
              CustomerDetailController.to.salesPaymentDatabaseModels.length,
        ),
      ),
    );
  }
}
