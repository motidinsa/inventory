import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

import 'package:my_inventory/core/ui/elevated_card.dart';
import 'package:my_inventory/add_vendor/controller/add_vendor_controller.dart';

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
    Get.put(AddVendorController());
    return BodyWrapper(
      pageName: addVendorN,
      body: Form(
        key: AppController.to.formKey,
        child: ListView(
          children: [
            sizedBox(height: 20),
            ElevatedCard(
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) => CustomTextField(
                  title: titles[index],
                  labelText: titles[index],
                ),
                shrinkWrap: true,
                itemCount: titles.length,
                separatorBuilder: (ctx, index) => sizedBox(height: 15),
              ),
            ),
            const ActionButton(
              redirectFrom: addVendorN,
            ),
          ],
        ),
      ),
    );
  }
}
