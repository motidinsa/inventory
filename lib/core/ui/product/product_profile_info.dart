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
                    data: dateFormatter.format(getSelectedDate()!),
                  ),
                ],
              ),
            )
          ],
        ),
        sizedBox(height: 15),
        Row(
          children: [
            Icon(
              Get.currentRoute == RouteName.sales ? Icons.person : Icons.corporate_fare,
              size: 28,
              color: Colors.grey.shade700,
            ),
            sizedBox(width: 15),
            Text(
              Get.currentRoute == RouteName.sales ? customerN : vendorN,
              style: const TextStyle(fontSize: 17),
            ),
            sizedBox(width: 20),
             const Expanded(
              child: CustomTextField(
                title: selectN,
              ),
            ),
            if (getProfileId() != null) ...[
              sizedBox(width: 2),
              IconButton(
                onPressed: () => onProfileCancelPressed(),
                icon: Icon(
                  Icons.cancel,
                  color: Colors.red.shade600,
                ),
                style: IconButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap),
              )
            ]
          ],
        ),
        if (getProfilePhone() != null) ...[
          sizedBox(height: 20),
          ProfileTitleToData(
            title: phoneNumberN,
            data: getProfilePhone()!,
            dataColor: Colors.green.shade800,
          )
        ],
      ],
    );
  }
}
