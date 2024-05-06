import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';

import 'package:my_inventory/main.dart';

import 'package:my_inventory/core/ui/custom_text_field_2.dart';
import 'package:my_inventory/core/ui/shadowed_container.dart';

import '../../core/functions/core_functions.dart';
import '../controller/add_vendor_controller.dart';

class AddVendor extends StatelessWidget {
  AddVendor({super.key});

  final List<String> titles = [
    vendorNameN,
    phoneNumberN,
    contactPersonN,
    addressN,
    cityN,
    emailN
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddVendorController>(builder: (addVendorController) {
      if (addVendorController.isLoading) {
        context.loaderOverlay.show();
      } else {
        executeAfterBuild(() {
          context.loaderOverlay.hide();
        });
      }
      return BodyWrapper(
        pageName: addCustomerN,
        body: Form(
          key: AppController.to.formKey,
          child: Center(
            child: SizedBox(
              width: context.responsive<double>(
                Get.mediaQuery.size.width,
                xxl: 600,
              ),
              child: ListView(
                children: [
                  sizedBox(height: 20),
                  ShadowedContainer(
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (ctx, index) => CustomTextField2(
                        title: titles[index],
                        color: Colors.green.shade50,
                      ),
                      shrinkWrap: true,
                      itemCount: titles.length,
                      separatorBuilder: (ctx, index) =>
                          sizedBox(height: 15),
                    ),
                  ),
                  const ActionButton(),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
