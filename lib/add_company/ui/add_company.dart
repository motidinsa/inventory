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
              child: Column(children: [Text('Company details'),
                Row(
                  children: [
                    Text('Logo'),
                    sizedBox(width: 30),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    )
                  ],
                ),
                CustomTextField(
                  title: 'Company Name',
                  leadingIconData: Icons.account_balance,
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
                  title: 'Phone number',
                  leadingIconData: Icons.phone,
                  redirectFrom: 'Add Customer',
                ),
                sizedBox(height: 15),
                CustomTextField(
                  title: 'Email',
                  leadingIconData: Icons.email_outlined,
                  redirectFrom: 'Add Customer',
                ),
                sizedBox(height: 15),
                CustomTextField(
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
                      OutlinedButton(onPressed: () {}, child: Text('Save')),
                      OutlinedButton(onPressed: () {}, child: Text('Cancel'))
                    ],
                  ),
                ),],),
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
