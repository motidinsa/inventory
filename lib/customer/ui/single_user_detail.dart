import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';

class SingleCustomerDetail extends StatelessWidget {
  final String field;
  final String? data;
  final Map<String, IconData> fieldToIcon = {
    'Phone': Icons.phone,
    'Email': Icons.email_outlined,
    'Address': Icons.location_on_outlined,
  };

  SingleCustomerDetail({super.key, required this.field, this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(fieldToIcon[field]),
                sizedBox(width: 8),
                Text(
                  field,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(data ?? '', style: TextStyle(
              fontSize: 16,
            ),),
          ],
        ),
      ),
    );
  }
}
