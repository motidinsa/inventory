import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/core/ui/profile/profile_mini_detail.dart';

import 'package:my_inventory/vendor_list/controller/vendor_list_controller.dart';
import 'package:my_inventory/vendor_list/ui/add_new_vendor.dart';

class VendorList extends StatelessWidget {
  const VendorList({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: vendorListN,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child:
            GetBuilder<VendorListController>(builder: (vendorListController) {
              return vendorListController.isEmpty == true
              ? const AddNewVendor()
              : ListView(
                  children: [
                    sizedBox(height: 15),
                      const CustomTextField(
                        title: vendorListN,),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: vendorListController.vendorList.isEmpty
                          ? Center(
                              child: Text(
                                noVendorFoundN,
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
                                name:
                                vendorListController.vendorList[index].name,
                                index: index,
                                iconData: Icons.corporate_fare_rounded,
                              ),
                              itemCount: vendorListController.vendorList.length,
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
