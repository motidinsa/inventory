import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/constants/widget_constants.dart';
import 'package:inventory/core/routes/route_names.dart';

class AddNewProduct extends StatelessWidget {
  const AddNewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            noProductFoundN,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.grey.shade700),
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {
              Get.toNamed(RouteName.addProduct);
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
              addProductN,
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
