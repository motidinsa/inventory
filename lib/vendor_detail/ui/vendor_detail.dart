import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/ui/body_wrapper.dart';
import 'package:inventory/core/ui/profile/profile_detail.dart';

import 'package:inventory/vendor_detail/controller/vendor_detail_controller.dart';

class VendorDetail extends StatelessWidget {
  const VendorDetail(
      {super.key, });

  @override
  Widget build(BuildContext context) {
    return  BodyWrapper(
      pageName: vendorDetailN,
      body: GetBuilder<VendorDetailController>(
          builder: (_) {
            return  ProfileDetail();
          }
      ),
    );
  }
}
