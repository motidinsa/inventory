import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/model/customer/customer_database_model.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/profile/profile_detail.dart';
import 'package:my_inventory/customer_detail/controller/customer_detail_controller.dart';

class CustomerDetail extends StatelessWidget {
  // final CustomerDatabaseModel customerDatabaseModel;
  // final int index;
  final DateFormat dateFormatter = DateFormat("MMM d, y");

  CustomerDetail(
      {super.key, });

  @override
  Widget build(BuildContext context) {
    // Get.put(
    //   CustomerDetailController(
    //     isarId: customerDatabaseModel.id,
    //     customerId: customerDatabaseModel.customerId,
    //   ),
    // );
    return const BodyWrapper(
      pageName: customerDetailN,
      body: ProfileDetail(),
    );
  }
}
