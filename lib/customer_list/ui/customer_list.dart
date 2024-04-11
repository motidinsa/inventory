import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/core/ui/profile/profile_mini_detail.dart';

import 'package:my_inventory/customer_list/controller/customer_list_controller.dart';

class CustomerList extends StatelessWidget {
  const CustomerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyWrapper(
      pageName: customerListN,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Obx(
          () => ListView(
            children: [
              sizedBox(height: 15),
              const CustomTextField(
                title: customerListN,
              ),
              // sizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ListView.separated(
                  shrinkWrap: true,
                  // reverse: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) => ProfileMiniDetail(
                    name: Get.find<CustomerListController>()
                        .customerList[index]
                        .name,
                    index: index,
                  ),
                  itemCount:
                      Get.find<CustomerListController>().customerList.length,
                  separatorBuilder: (ctx, index) => sizedBox(height: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
