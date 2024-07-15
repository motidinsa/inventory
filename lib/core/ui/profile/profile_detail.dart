import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/core/ui/profile/profile_single_detail.dart';
import 'package:my_inventory/core/ui/shadowed_container.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';

import 'package:my_inventory/product_list/ui/product_detail_single_description.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/profile/profile_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/action_button.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

class ProfileDetail extends StatelessWidget {
  ProfileDetail({super.key});

  final bool customerWithCredit = customerHasCredit();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20),
        ShadowedContainer(
          horizontalMargin: 20,
          padding: EdgeInsets.only(
              bottom: customerWithCredit ? 0 : 20,
              left: 20,
              right: 20,
              top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => onProfileEditPressed(),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: ProductDetailSingleDescription(
                      title: dateAddedN,
                      description: getProfileDetailDateAdded(),
                      dataColor: Colors.green.shade800,
                      titleColor: Colors.grey.shade700,
                      textAlign: TextAlign.end,
                      // titleFontSize: 17,
                    ),
                  ),
                ],
              ),
              if (customerWithCredit) ...[
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius: smoothBorderRadius()),
                      child: const Text(
                        creditN,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      getFormattedNumberWithComa(
                          Get.find<CustomerDetailController>()
                                  .customerDatabaseModel
                                  .totalCreditAmount ??
                              0),
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    )
                  ],
                ),
              ],
              Card(
                elevation: 3,
                margin: const EdgeInsets.only(
                  top: 10,
                ),
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
                      String title = profileTitles()[index];
                      return ProfileSingleDetail(
                        title: title,
                        data: getProfileTitleToData(title: title),
                        titleFontSize: 17,
                        dataFontSize: 16,
                        titleColor: Colors.green.shade800,
                        dataColor: Colors.grey.shade700,
                      );
                    },
                    separatorBuilder: (ctx, index) => SizedBox(height: 20),
                    itemCount: profileTitles().length,
                  ),
                ),
              ),
              if (customerWithCredit)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(RouteName.creditHistory);
                    },
                    style: ElevatedButton.styleFrom(
                        shape: smoothRectangleBorder(radius: 12),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        backgroundColor: Colors.green.shade50),
                    child: const Text(showCreditHistoryN),
                  ),
                )
            ],
          ),
        ),
        // const ActionButton(),
      ],
    );
  }
}
