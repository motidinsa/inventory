import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/core/ui/profile/profile_mini_detail.dart';
import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';
import 'package:my_inventory/customer_list/ui/add_new_customer.dart';

import '../../core/model/customer/customer_database_model.dart';
import '../repository/customer_list_repository.dart';

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
          List<CustomerDatabaseModel> customerList =
              CustomerListRepository.getAllCustomers();
          return customerList.isEmpty == true
              ? const AddNewCustomer()
              : ListView(
                  children: [
                    sizedBox(height: 15),
                    const CustomTextField(
                      title: customerListN,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: customerList.isEmpty
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
                                name: customerList[index].name,
                                index: index,
                                iconData: Icons.person,
                              ),
                              itemCount: customerList.length,
                              separatorBuilder: (ctx, index) =>
                                  sizedBox(height: 12),
                            ),
                    ),
                  ],
                );
        }),
      ),
    );
  }
}
