import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/routes/route_names.dart';
import 'package:my_inventory/core/ui/profile/profile_single_detail.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';

import 'package:my_inventory/product_list/ui/product_detail_single_description.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/profile/profile_functions.dart';
import 'package:my_inventory/core/model/action_button_enum.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';

import 'package:my_inventory/core/functions/core_functions.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        sizedBox(height: 20),
        ElevatedCard(
          verticalPadding: 5,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => onProfileEditPressed(),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 0),
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
                        sizedBox(width: 20),
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
              if (Get.find<CustomerDetailController>().customerCredit > 0) ...[
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
                      '${getFormattedNumberWithComa(Get.find<CustomerDetailController>().customerCredit)}',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    )
                  ],
                ),
              ],
              Card(
                elevation: 5,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
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
                    separatorBuilder: (ctx, index) => sizedBox(height: 12),
                    itemCount: profileTitles().length,
                  ),
                ),
              ),
              if (Get.find<CustomerDetailController>().customerCredit > 0)
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(RouteName.creditHistory);
                    },
                    style: ElevatedButton.styleFrom(
                        shape: smoothRectangleBorder(radius: 12),backgroundColor: Colors.green.shade50),
                    child: const Text(showCreditHistoryN),
                  ),
                )
            ],
          ),
        ),
        ActionButton(backgroundColor: Colors.red.shade400),
      ],
    );
  }
}
