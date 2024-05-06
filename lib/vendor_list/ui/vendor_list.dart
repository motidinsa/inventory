import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/core/ui/profile/profile_list.dart';
import 'package:my_inventory/core/ui/profile/profile_mini_detail.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';
import 'package:my_inventory/customer_list/ui/add_new_customer.dart';

import '../controller/vendor_list_controller.dart';

class VendorList extends StatelessWidget {
  const VendorList({super.key});
  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: vendorListN,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GetBuilder<VendorListController>(
            builder: (vendorListController) {
              return ProfileList();
            }),
      ),
    );
  }
}
