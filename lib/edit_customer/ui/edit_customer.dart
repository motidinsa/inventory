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

import '../../core/model/customer/customer_database_model.dart';
import '../controller/edit_customer_controller.dart';

class EditCustomer extends StatelessWidget {
  final CustomerDatabaseModel customerDatabaseModel;

  EditCustomer({super.key, required this.customerDatabaseModel});

  final List<String> titleList = [
    customerNameN(),
    phoneNumberN(),
    addressN(),
    cityN(),
    emailN()
  ];

  final AppController appController = Get.find();
  @override
  Widget build(BuildContext context) {
    Get.put(
        EditCustomerController(customerDatabaseModel: customerDatabaseModel));
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
        pageName: editCustomerN,
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
                redirectFrom: editCustomerN,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
