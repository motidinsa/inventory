import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/ui/body_wrapper.dart';
import 'package:inventory/core/ui/profile/profile_detail.dart';
import 'package:inventory/customer_detail/controller/customer_detail_controller.dart';

import '../../core/functions/helper_functions.dart';

class CustomerDetail extends StatelessWidget {
  const CustomerDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: customerDetailN,
      body: GetBuilder<CustomerDetailController>(
          builder: (customerDetailController) {
        if (customerDetailController.isLoading) {
          context.loaderOverlay.show();
        } else {
          executeAfterBuild(() {
            context.loaderOverlay.hide();
          });
        }
        return ProfileDetail();
      }),
    );
  }
}
