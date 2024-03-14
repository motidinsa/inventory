import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/my_custom_text_field.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';

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
    return GestureDetector(
      onTap: () => unFocus(),
      child: Scaffold(
        backgroundColor: Colors.green.shade50,
        body: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                addCustomerN(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff006E1C).withOpacity(.9),
                ),
              ),
              centerTitle: true,
              elevation: 3,
              shadowColor: Colors.grey,
              backgroundColor: const Color(0xffDCEEDE),
              leading: IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Icons.close,
                  color: Colors.grey.shade800,
                ),
              ),
              // surfaceTintColor: Colors.white,
            ),
            body: ListView(
              children: [
                sizedBox(height: 20),
                ElevatedCard(
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) => MyCustomTextField(
                      title: titles[index],
                      leadingIconData: Icons.account_balance,
                      redirectFrom: addCustomerN(),
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
        ),
      ),
    );
  }
}
