import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/model/action_button_enum.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';
import 'package:my_inventory/core/ui/profile/profile_single_detail.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';
import 'package:my_inventory/edit_customer/ui/edit_customer.dart';
import 'package:my_inventory/product_list/ui/product_detail_single_description.dart';

class CustomerDetail extends StatelessWidget {
  final CustomerDatabaseModel customerDatabaseModel;
  final int index;
  final DateFormat dateFormatter = DateFormat("MMM d, y");

  CustomerDetail(
      {super.key, required this.customerDatabaseModel, required this.index});

  @override
  Widget build(BuildContext context) {
    var titleToData = {
      customerNameN(): customerDatabaseModel.name,
      phoneNumberN(): customerDatabaseModel.phone ?? '',
      addressN(): customerDatabaseModel.address ?? '',
      cityN(): customerDatabaseModel.city ?? '',
      emailN(): customerDatabaseModel.email ?? ''
    };
    Get.put(
      CustomerDetailController(
        isarId: customerDatabaseModel.id,
        customerId: customerDatabaseModel.customerId,
      ),
    );
    return BodyWrapper(
      pageName: customerDetailN,
      body: ListView(
        children: [
          sizedBox(height: 20),
          ElevatedCard(
            verticalPadding: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.to(() => EditCustomer(
                              customerDatabaseModel: customerDatabaseModel,
                            ));
                      },
                      child: Row(
                        children: [
                          Text(
                            'Edit',
                            style: TextStyle(
                                color: Colors.green.shade700,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          sizedBox(width: 20),
                          Icon(
                            Icons.edit,
                            color: Colors.green.shade700,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ProductDetailSingleDescription(
                        title: 'Date added',
                        description: dateFormatter
                            .format(customerDatabaseModel.dateCreated),
                        dataColor: Colors.green.shade800,
                        titleColor: Colors.grey.shade700,
                        textAlign: TextAlign.end,
                        titleFontSize: 17,
                      ),
                    ),
                  ],
                ),
                if(customerDatabaseModel.lastModifiedDate!=null)
                ...[sizedBox(height: 10),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ProductDetailSingleDescription(
                        title: 'Last modified',
                        description: dateFormatter
                            .format(customerDatabaseModel.lastModifiedDate!),
                        dataColor: Colors.green.shade800,
                        titleColor: Colors.grey.shade700,
                        textAlign: TextAlign.end,
                        titleFontSize: 17,
                      ),
                    ),
                  ],
                )],
                sizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Card(
                    elevation: 5,
                    surfaceTintColor: Colors.white,
                    shape: smoothRectangleBorder(
                      radius: 15,
                      side: const BorderSide(
                        color: Colors.green,
                        width: .5,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          List keys = titleToData.keys.toList();
                          String title = keys[index];
                          String data = titleToData[title].toString();
                          return ProfileSingleDetail(
                            title: title,
                            data: data,
                            titleFontSize: 18,
                            dataFontSize: 17,
                            titleColor: Colors.green.shade800,
                            dataColor: Colors.grey.shade700,
                          );
                        },
                        separatorBuilder: (ctx, index) => sizedBox(height: 20),
                        itemCount: titleToData.length,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ActionButton(
            redirectFrom: customerDetailN,
            actionButtonType: ActionButtonType.delete,
            // productId: productDatabaseModel.productId,
          ),
        ],
      ),
    );
  }
}
