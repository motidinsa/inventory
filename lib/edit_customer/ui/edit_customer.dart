import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/constants/widget_constants.dart';
import 'package:inventory/core/controller/app_controller.dart';
import 'package:inventory/core/ui/action_button.dart';
import 'package:inventory/core/ui/body_wrapper.dart';
import 'package:inventory/edit_customer/controller/edit_customer_controller.dart';

import 'package:inventory/core/ui/custom_text_field_2.dart';
import 'package:inventory/core/ui/shadowed_container.dart';

import 'package:inventory/core/functions/helper_functions.dart';

class EditCustomer extends StatelessWidget {
  EditCustomer({super.key});

  final List<String> titleList = [
    customerNameN,
    phoneNumberN,
    addressN,
    cityN,
    emailN
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditCustomerController>(
      builder: (editCustomerController) {
        if (editCustomerController.isLoading) {
          context.loaderOverlay.show();
        } else {
         executeAfterBuild(() { context.loaderOverlay.hide();});
        }
        return BodyWrapper(
          pageName: editCustomerN,
          body: Form(
            key: AppController.to.formKey,
            child: ListView(
              children: [
                SizedBox(height: 20),
                ShadowedContainer(
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) => CustomTextField2(
                      title: titleList[index],
                      color: Colors.green.shade50,
                    ),
                    shrinkWrap: true,
                    itemCount: titleList.length,
                    separatorBuilder: (ctx, index) => const SizedBox(height: 15),
                  ),
                ),
                const ActionButton(),
              ],
            ),
          ),
        );
      }
    );
  }
}
