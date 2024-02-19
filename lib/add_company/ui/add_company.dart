import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

class AddCompany extends StatelessWidget {
  const AddCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [const Text('Company details'),
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
                  title: 'Company Name',
                  leadingIconData: Icons.account_balance,
                  redirectFrom: 'Add Customer',
                ),
                sizedBox(height: 15),
                const CustomTextField(
                  title: 'Address',
                  leadingIconData: Icons.place_outlined,
                  redirectFrom: 'Add Customer',
                ),
                sizedBox(height: 15),
                const CustomTextField(
                  title: 'City',
                  leadingIconData: Icons.access_time_filled_sharp,
                  redirectFrom: 'Add Customer',
                ),
                sizedBox(height: 15),
                const CustomTextField(
                  title: 'Phone number',
                  leadingIconData: Icons.phone,
                  redirectFrom: 'Add Customer',
                ),
                sizedBox(height: 15),
                const CustomTextField(
                  title: 'Email',
                  leadingIconData: Icons.email_outlined,
                  redirectFrom: 'Add Customer',
                ),
                sizedBox(height: 15),
                const CustomTextField(
                  title: 'Web',
                  leadingIconData: Icons.add_chart_sharp,
                  redirectFrom: 'Add Customer',
                ),
                sizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(onPressed: () {}, child: const Text('Save')),
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
