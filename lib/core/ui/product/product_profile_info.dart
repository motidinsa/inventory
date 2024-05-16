import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/profile/profile_functions.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/core/ui/product/profile_title_to_data.dart';

import 'package:my_inventory/core/routes/route_names.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

import '../custom_text_field_2.dart';

class ProductProfileInfo extends StatelessWidget {
  ProductProfileInfo({super.key,});

  final DateFormat dateFormatter = DateFormat('MMM d, y');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ProfileTitleToData(
                    title: dateN,
                    dataColor: Colors.green.shade700,
                    data: dateFormatter.format(getSelectedDate()),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomTextField2(
            title: Get.currentRoute == RouteName.addPurchase?vendorN:customerN,
          ),
        ),
        if (getProfilePhone() != null) ...[
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ProfileTitleToData(
              title: phoneNumberN,
              data: getProfilePhone()!,
              dataColor: Colors.green.shade800,
            ),
          )
        ],
      ],
    );
  }
}
