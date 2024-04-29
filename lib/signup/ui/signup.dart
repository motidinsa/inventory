import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/signup/controller/signup_controller.dart';

import 'package:my_inventory/core/functions/core_functions.dart';

class SignUp extends StatelessWidget {
   const SignUp({Key? key}) : super(key: key);
   static const List<String> signUpRequirements = [
    firstNameN,
    lastNameN,
    phoneNumberN,
    companyNameN
  ];
   static const List<IconData> signUpRequirementsIcon = [
    Icons.person_rounded,
    Icons.person_rounded,
    Icons.phone,
    Icons.corporate_fare_rounded
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unFocus(),
      child: Scaffold(
        body: LoaderOverlay(
          child: SafeArea(
            child: Center(
              child: Form(
                key: AppController.to.formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Center(
                        child: Text(
                          signUpN,
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: bold(),
                              color: Colors.green.shade800),
                        ),
                      ),
                      Center(
                        child: Text(
                          createNewAccountN,
                          style: TextStyle(color: Colors.green.shade800),
                        ),
                      ),
                      sizedBox(height: 16),
                      Card(
                        color: Colors.grey.shade50,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              sizedBox(height: 20),
                              ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) => TextFormField(
                                  onTap: () {},
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                      fillColor: Colors.white70,
                                      filled: true,
                                      errorMaxLines: 2,
                                      border: UnderlineInputBorder(
                                        borderRadius:
                                            smoothBorderRadius(radius: 12),
                                        borderSide: BorderSide.none,
                                      ),
                                      prefixIcon:  Icon(signUpRequirementsIcon[index]),
                                      labelText: signUpRequirements[index],
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 20,vertical: 10)
                                        ),
                                ),
                                separatorBuilder: (context, index) =>
                                    sizedBox(height: 12),
                                itemCount:
                                    signUpRequirements.length,
                              ),
                              sizedBox(height: 20)
                            ],
                          ),
                        ),
                      ),
                      ActionButton(
                        redirectFrom: signUpN,
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 24,
                        ),
                        backgroundColor: Colors.green.shade300,
                        textColor: Colors.white,
                      ),
                      // sizedBox(height: 10)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
