import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/core/ui/profile/profile_mini_detail.dart';


import 'package:my_inventory/vendor_list/controller/vendor_list_controller.dart';

class VendorList extends StatelessWidget {
  VendorList({super.key});

  final VendorListController vendorListController =
  Get.put(VendorListController());

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: vendorListN,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Obx(() => ListView(
          children: [
            sizedBox(height: 15),
             const CustomTextField(
              title: vendorListN,
            ),
            // sizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ListView.separated(
                shrinkWrap: true,
                reverse: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) => ProfileMiniDetail(
                  name: vendorListController.vendorList[index].name,
                  index: index,
                ),
                itemCount: vendorListController.vendorList.length,
                separatorBuilder: (ctx, index) => sizedBox(height: 15),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
