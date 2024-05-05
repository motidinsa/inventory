import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/edit_customer/controller/edit_customer_controller.dart';

import 'package:my_inventory/core/ui/custom_text_field_2.dart';
import 'package:my_inventory/core/ui/shadowed_container.dart';

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
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            context.loaderOverlay.hide();
          });
        }
        return BodyWrapper(
          pageName: editCustomerN,
          body: Form(
            key: AppController.to.formKey,
            child: ListView(
              children: [
                sizedBox(height: 20),
                ShadowedContainer(
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) => CustomTextField2(
                      title: titleList[index],
                      color: Colors.green.shade50,
                    ),
                    shrinkWrap: true,
                    itemCount: titleList.length,
                    separatorBuilder: (ctx, index) => sizedBox(height: 15),
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
