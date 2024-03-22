import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/model/page_name_enum.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/core/ui/product/profile_title_to_data.dart';

import '../../functions/core_functions.dart';

class ProductProfileInfo extends StatelessWidget {
  final PageName page;

  ProductProfileInfo({super.key, required this.page});

  final DateFormat dateFormatter = DateFormat("MMM d, y");

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // const Spacer(
                //   flex: 2,
                // ),
                Expanded(
                  flex: 3,
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
                  customerN(),
                  style: TextStyle(fontSize: 17),
                ),
                sizedBox(width: 20),
                const Expanded(
                  // flex: 9,
                  child: CustomTextField(
                    title: defaultN,
                    // index: index,
                  ),
                )
              ],
            ),
            sizedBox(height: 20),
            const ProfileTitleToData(
              title: 'Tel',
              data: '09112222XX',
            ),
            sizedBox(height: 10),
            const ProfileTitleToData(
              title: 'Email',
              data: 'xyz@gmail.com',
            ),
            // const Text('Email: xyz@gmail.com'),
          ],
        ));
  }
}
