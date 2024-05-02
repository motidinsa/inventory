import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/routes/route_names.dart';

class AddNewCustomer extends StatelessWidget {
  const AddNewCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            noCustomerFoundN,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.grey.shade700),
          ),
          sizedBox(height: 10),
          TextButton(
            onPressed: () {
              Get.toNamed(RouteName.addCustomer);
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              backgroundColor: Colors.green.shade50,
            ),
            child: const Text(
              addCustomerN,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
