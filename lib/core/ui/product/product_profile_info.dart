import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/model/page_name_enum.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/core/ui/product/profile_title_to_data.dart';

class ProductProfileInfo extends StatelessWidget {
  final PageName page;

  const ProductProfileInfo({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProfileTitleToData(
                      title: 'Date',
                      data: 'feb 17, 2024',
                    ),
                    sizedBox(height: 10),
                    const ProfileTitleToData(
                      title: 'Ref',
                      data: 'S-1',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        sizedBox(height: 20),
        Row(
          children: [
            Icon(
              Icons.person,
              size: 28,
              color: Colors.grey.shade600,
            ),
            sizedBox(width: 15),
            const Text(
              'Customer:',
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
    );
  }
}
