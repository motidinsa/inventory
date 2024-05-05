import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/profile/profile_detail.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';

class CustomerDetail extends StatelessWidget {
  const CustomerDetail(
      {super.key, });

  @override
  Widget build(BuildContext context) {
    return  BodyWrapper(
      pageName: customerDetailN,
      body: GetBuilder<CustomerDetailController>(
        builder: (_) {
          return const ProfileDetail();
        }
      ),
    );
  }
}
