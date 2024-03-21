import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/core/ui/my_custom_text_field.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';

import '../../core/ui/body_wrapper.dart';
import '../controller/add_customer_controller.dart';

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
      body: ListView(
        children: [
          sizedBox(height: 20),
          ElevatedCard(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) => CustomTextField(
                title: titles[index],
                labelText: titles[index],
              ),
              //     MyCustomTextField(
              //   title: titles[index],
              //   leadingIconData: Icons.account_balance,
              //   redirectFrom: addCustomerN(),
              // ),
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
    );
  }
}
