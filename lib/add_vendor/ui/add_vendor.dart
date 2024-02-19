import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/add_vendor/controller/add_vendor_controller.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

class AddVendor extends StatelessWidget {
  const AddVendor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [const Text('Vendor details'),
                Row(
                  children: [
                    const Text('Logo'),
                    sizedBox(width: 30),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                    )
                  ],
                ),
                const CustomTextField(
                  title: 'Vendor Name',
                  leadingIconData: Icons.account_balance,
                  redirectFrom: 'Add Vendor',
                ),
                sizedBox(height: 15),
                const CustomTextField(
                  title: 'Address',
                  leadingIconData: Icons.place_outlined,
                  redirectFrom: 'Add Vendor',
                ),
                sizedBox(height: 15),
                const CustomTextField(
                  title: 'City',
                  leadingIconData: Icons.access_time_filled_sharp,
                  redirectFrom: 'Add Vendor',
                ),
                sizedBox(height: 15),
                const CustomTextField(
                  title: 'Phone number',
                  leadingIconData: Icons.phone,
                  redirectFrom: 'Add Vendor',
                ),
                sizedBox(height: 15),
                const CustomTextField(
                  title: 'Email',
                  leadingIconData: Icons.email_outlined,
                  redirectFrom: 'Add Vendor',
                ),
                sizedBox(height: 15),
                const CustomTextField(
                  title: 'Contact person',
                  leadingIconData: Icons.person,
                  redirectFrom: 'Add Vendor',
                ),
                sizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(onPressed: () {
                        AddVendorController aa = Get.find();
                        aa.addCustomerToDB();
                      }, child: const Text('Save')),
                      OutlinedButton(onPressed: () {}, child: const Text('Cancel'))
                    ],
                  ),
                ),],),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Terms & condition'),
              sizedBox(width: 10),
              const Text(
                '|',
                style: TextStyle(fontSize: 25),
              ),
              sizedBox(width: 10),
              const Text('Contact us')
            ],
          )
        ],
      ),
    );
  }
}
