import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory/core/constants/name_constants.dart';
import 'package:inventory/core/constants/widget_constants.dart';
import 'package:inventory/core/ui/body_wrapper.dart';
import 'package:inventory/core/ui/custom_text_field.dart';
import 'package:inventory/core/ui/profile/profile_mini_detail.dart';
import 'package:inventory/customer_list/controller/customer_list_controller.dart';
import 'package:inventory/customer_list/ui/add_new_customer.dart';


class CustomerList extends StatelessWidget {
  const CustomerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: customerListN,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GetBuilder<CustomerListController>(
            builder: (customerListController) {
          return customerListController.isEmpty == true
              ? const AddNewCustomer()
              : ListView(
                  children: [
                    SizedBox(height: 15),
                     CustomTextField(
                      title: customerListN,fillColor: Colors.grey.shade200,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: customerListController.customerList.isEmpty
                          ? Center(
                              child: Text(
                                noCustomerFoundN,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.grey.shade700),
                              ),
                            )
                          : ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (ctx, index) => ProfileMiniDetail(
                                name: customerListController.customerList[index].name,
                                index: index,
                                iconData: Icons.person,
                              ),
                              itemCount: customerListController.customerList.length,
                              separatorBuilder: (ctx, index) =>
                                  SizedBox(height: 12),
                            ),
                    ),
                  ],
                );
        }),
      ),
    );
  }
}
