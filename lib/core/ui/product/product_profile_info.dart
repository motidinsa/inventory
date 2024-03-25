import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/model/page_name_enum.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/core/ui/product/profile_title_to_data.dart';

import '../../functions/core_functions.dart';
import '../../functions/profile/profile_functions.dart';

class ProductProfileInfo extends StatelessWidget {
  final PageName page;

  ProductProfileInfo({super.key, required this.page});

  final DateFormat dateFormatter = DateFormat("MMM d, y");

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
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
        sizedBox(height: 20),
        Row(
          children: [
            Icon(
              page == PageName.sales
                  ? Icons.person
                  : Icons.account_balance_rounded,
              size: 28,
              color: Colors.grey.shade700,
            ),
            sizedBox(width: 15),
            Text(
              page == PageName.sales ? customerN() : vendorN(),
              style: TextStyle(fontSize: 17),
            ),
            sizedBox(width: 20),
            Expanded(
              child: CustomTextField(
                title: selectN,
              ),
            ),
            if (getProfileId() != null) ...[
              sizedBox(width: 2),
              IconButton(
                onPressed: () =>onProfileCancelPressed(),
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
            title: phoneNumberN(),
            data: getProfilePhone()!,
            dataColor: Colors.green.shade800,
          )
        ],
        if (getProfileAddress() != null) ...[
          sizedBox(height: 10),
          ProfileTitleToData(
            title: addressN(),
            data: getProfileAddress()!,
            dataColor: Colors.green.shade800,
          ),
        ]
        // const Text('Email: xyz@gmail.com'),
      ],
    );
  }
}
