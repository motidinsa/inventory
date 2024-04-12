import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/body_wrapper.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';
import 'package:my_inventory/core/ui/elevated_card.dart';

import 'package:my_inventory/core/model/vendor/vendor_database_model.dart';
import 'package:my_inventory/edit_vendor/controller/edit_vendor_controller.dart';
class EditVendor extends StatelessWidget {
  final VendorDatabaseModel vendorDatabaseModel;

  EditVendor({super.key, required this.vendorDatabaseModel});

  final List<String> titleList = [
    vendorNameN,
    phoneNumberN,
    contactPersonN,
    addressN,
    cityN,
    emailN
  ];

  final AppController appController = Get.find();
  @override
  Widget build(BuildContext context) {
    Get.put(
        EditVendorController(vendorDatabaseModel: vendorDatabaseModel));
    return LoaderOverlay(
      useDefaultLoading: false,
      overlayWidgetBuilder: (_) {
        return const Center(
          child: CircularProgressIndicator(
            strokeWidth: 3,
          ),
        );
      },
      child: BodyWrapper(
        pageName: editVendorN,
        body: Form(
          key: appController.formKey,
          child: ListView(
            children: [
              sizedBox(height: 20),
              ElevatedCard(
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) => CustomTextField(
                    title: titleList[index],
                    labelText: titleList[index],
                  ),
                  shrinkWrap: true,
                  itemCount: titleList.length,
                  separatorBuilder: (ctx, index) => sizedBox(height: 15),
                ),
              ),
              ActionButton(
                redirectFrom: editVendorN,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
