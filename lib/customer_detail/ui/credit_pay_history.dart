import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:inventory/customer_detail/repository/customer_detail_repository.dart';

import '../../core/constants/name_constants.dart';
import '../../core/functions/helper_functions.dart';
import '../../core/functions/profile/profile_functions.dart';
import '../../core/model/sales/customer_credit_payment_history_database_model.dart';
import '../../core/styles/styles.dart';
import '../../core/ui/body_wrapper.dart';
import '../controller/customer_detail_controller.dart';

class CreditPayHistory extends StatelessWidget {
  const CreditPayHistory({super.key});

  @override
  Widget build(BuildContext context) {
    List<CustomerCreditPaymentHistoryDatabaseModel> customerCreditPayHistories =
        CustomerDetailRepository.getCustomerCreditPayHistory();
    return BodyWrapper(
      pageName: creditPayHistoryN,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (ctx, index) {
            CustomerCreditPaymentHistoryDatabaseModel
                customerCreditPaymentHistoryDatabaseModel =
                customerCreditPayHistories[index];
            return Card(
              surfaceTintColor: Colors.green,
              elevation: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
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
                                      customerCreditPaymentHistoryDatabaseModel
                                          .datePaid),
                                  style: TextStyle(color: Colors.green.shade800),
                                ),
                                // TextSpan(text: ' world!'),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () => onProfileEditPressed(),
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  editN,
                                  style: TextStyle(
                                      color: Colors.green.shade700,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 20),
                                Icon(
                                  Icons.edit,
                                  color: Colors.green.shade700,
                                  size: 19,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
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
                                  customerCreditPaymentHistoryDatabaseModel
                                      .cash),
                              style: TextStyle(color: Colors.green.shade800),
                            ),
                            // TextSpan(text: ' world!'),
                          ],
                                                    ),
                                                  ),
                          // const SizedBox(
                          //   width: 10,
                          // ),
                          RichText(
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
                                      customerCreditPaymentHistoryDatabaseModel
                                          .transfer),
                                  style:
                                      TextStyle(color: Colors.green.shade800),
                                ),
                                // TextSpan(text: ' world!'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // const SizedBox(
                      //   height: 5,
                      // ),
                      // Row(
                      //   // mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     Container( padding: const EdgeInsets.symmetric(
                      //         horizontal: 8, vertical: 5),
                      //         decoration: BoxDecoration(
                      //             color: Colors.red.shade300,
                      //             borderRadius: smoothBorderRadius()),
                      //         child: Text('Remaining',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                      //     SizedBox(
                      //       width: 10,
                      //     ),
                      //     Text(getFormattedNumberWithComa(customerCreditPaymentHistoryDatabaseModel
                      //         .remainingCredit)
                      //
                      //     )
                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (ctx, index) => const SizedBox(
            height: 5,
          ),
          itemCount: customerCreditPayHistories.length,
        ),
      ),
    );
  }
}
