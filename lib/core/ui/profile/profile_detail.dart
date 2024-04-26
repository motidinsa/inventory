import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
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

import '../../functions/core_functions.dart';

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
          verticalPadding: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => onProfileEditPressed(),
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
                      title: 'Date added',
                      description: getProfileDetailDateAdded(),
                      dataColor: Colors.green.shade800,
                      titleColor: Colors.grey.shade700,
                      textAlign: TextAlign.end,
                      titleFontSize: 17,
                    ),
                  ),
                ],
              ),
              if (Get.find<CustomerDetailController>().customerCredit > 0) ...[
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius: smoothBorderRadius()),
                      child: Text(
                        'Credit',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
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
                        String title = profileTitles()[index];
                        return ProfileSingleDetail(
                          title: title,
                          data: getProfileTitleToData(title: title),
                          titleFontSize: 18,
                          dataFontSize: 17,
                          titleColor: Colors.green.shade800,
                          dataColor: Colors.grey.shade700,
                        );
                      },
                      separatorBuilder: (ctx, index) => sizedBox(height: 20),
                      itemCount: profileTitles().length,
                    ),
                  ),
                ),
              ),
              if (Get.find<CustomerDetailController>().customerCredit > 0)
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(RouteName.creditHistory);
                  },
                  child: Text('Show credit history'),
                  style: ElevatedButton.styleFrom(
                      shape: smoothRectangleBorder(radius: 12)),
                )
            ],
          ),
        ),
        ActionButton(
          redirectFrom: Get.currentRoute,
          actionButtonType: ActionButtonType.delete,
        ),
      ],
    );
  }
}
