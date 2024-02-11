import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

class AddCustomer extends StatelessWidget {
  // final Isar isar;
   AddCustomer({super.key});
  // AddCustomerController appc = Get.put(AddCustomerController());
   AppController aa = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text('Add customer'),
                  sizedBox(height: 20),
                  CustomTextField(
                    title: 'Customer Name',
                    leadingIconData: Icons.account_balance,
                    redirectFrom: 'Add Customer',
                  ),
                  sizedBox(height: 15),
                  CustomTextField(
                    title: 'Phone number',
                    leadingIconData: Icons.phone,
                    redirectFrom: 'Add Customer',
                  ),
                  sizedBox(height: 15),
                  CustomTextField(
                    title: 'Address',
                    leadingIconData: Icons.place_outlined,
                    redirectFrom: 'Add Customer',
                  ),
                  sizedBox(height: 15),
                  CustomTextField(
                    title: 'City',
                    leadingIconData: Icons.access_time_filled_sharp,
                    redirectFrom: 'Add Customer',
                  ),
                  sizedBox(height: 15),
                  CustomTextField(
                    title: 'Email',
                    leadingIconData: Icons.email_outlined,
                    redirectFrom: 'Add Customer',
                  ),
                  sizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(onPressed: () {
                          // AppController aa = Get.find();

                          AddCustomerController appc = Get.put(AddCustomerController());
                          appc.addCustomerToDB();
                        }, child: Text('Save')),
                        OutlinedButton(onPressed: () {}, child: Text('Cancel'))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Terms & condition'),
              sizedBox(width: 10),
              Text(
                '|',
                style: TextStyle(fontSize: 25),
              ),
              sizedBox(width: 10),
              Text('Contact us')
            ],
          )
        ],
      ),
    );
  }
}
