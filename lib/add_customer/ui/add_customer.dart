import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

import '../../core/ui/elevated_card.dart';

class AddCustomer extends StatelessWidget {
  AddCustomer({super.key});

  final AppController aa = Get.find();
  final List<String> titles = [
    customerNameN(),
    phoneNumberN(),
    addressN(),
    cityN(),
    emailN()
  ];

  @override
  Widget build(BuildContext context) {
    Get.put(AddCustomerController());
    return BodyWrapper(
      pageName: addCustomerN(),
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
            ActionButton(
              redirectFrom: addCustomerN(),
            ),
          ],
        ),
      ),
    );
  }
}
