import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/vendor_detail/controller/vendor_detail_controller.dart';

import 'package:my_inventory/core/ui/profile/profile_detail.dart';

class VendorDetail extends StatelessWidget {
  final VendorDatabaseModel vendorDatabaseModel;
  final int index;
  final DateFormat dateFormatter = DateFormat("MMM d, y");

  VendorDetail(
      {super.key, required this.vendorDatabaseModel, required this.index});

  @override
  Widget build(BuildContext context) {
    Get.put(
      VendorDetailController(
        isarId: vendorDatabaseModel.id,
        vendorId: vendorDatabaseModel.vendorId,
      ),
    );
    return  BodyWrapper(
      pageName: vendorDetailN,
      body: ProfileDetail(),
    );
  }
}
