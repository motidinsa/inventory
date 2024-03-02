import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';

import 'package:my_inventory/core/styles/styles.dart';

class ProfileTitleToData extends StatelessWidget {
  final String title;
  final String data;
  const ProfileTitleToData(
      {super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        titleToIcon(title: title),
        sizedBox(width: 15),
        RichText(
          text: TextSpan(
            text: '$title:   ',
            style: TextStyle(
              fontWeight: bold(),
              fontSize: 17,
              color: Colors.grey.shade700,
            ),
            children: <TextSpan>[
              TextSpan(
                text: data,
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
