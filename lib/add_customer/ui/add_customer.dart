import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

class AddCustomer extends StatelessWidget {
  AddCustomer({super.key});

  final AppController aa = Get.find();
  final List<String> titles = [
    customerNameN(),
    phoneNumberN(),
    addressN(),
    cityN(),
    emailN()
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>unFocus(),
      child: Scaffold(
        backgroundColor: Colors.green.shade50,
        body: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                addCustomerN(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                  color: const Color(0xff006E1C).withOpacity(.9),),
              ),
              centerTitle: true,
              elevation: 3,
              shadowColor: Colors.grey,
              backgroundColor: const Color(0xffDCEEDE),
              leading: IconButton(
                onPressed: () =>Get.back(),
                icon: Icon(
                  Icons.close,
                  color: Colors.grey.shade800,
                ),
              ),
              // surfaceTintColor: Colors.white,
            ),
            body: ListView(
              children: [
                sizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: smoothBorderRadius(radius: 20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                          spreadRadius: 0,
                        ),
                      ]),
                  child: Card(
                    // elevation: .8,
                    surfaceTintColor: Colors.white,
                    shape: smoothRectangleBorder(radius: 20),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, index) => CustomTextField(
                          title: titles[index],
                          leadingIconData: Icons.account_balance,
                          redirectFrom: addCustomerN(),
                        ),
                        shrinkWrap: true,
                        itemCount: titles.length,
                        separatorBuilder: (ctx, index) =>
                            sizedBox(height: 15),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              backgroundColor: Colors.green.shade50),
                          child: Text(
                            saveN(),
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
