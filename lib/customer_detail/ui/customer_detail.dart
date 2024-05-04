import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/profile/profile_detail.dart';

class CustomerDetail extends StatelessWidget {
  const CustomerDetail(
      {super.key, });

  @override
  Widget build(BuildContext context) {
    return const BodyWrapper(
      pageName: customerDetailN,
      body: ProfileDetail(),
    );
  }
}
