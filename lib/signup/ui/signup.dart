
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/action_button.dart';
import 'package:my_inventory/core/ui/custom_text_field_2.dart';
import 'package:my_inventory/signup/controller/signup_controller.dart';

import 'package:my_inventory/signup/ui/add_company_logo.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  static const List<String> signUpRequirements = [
    companyNameN,
    firstNameN,
    lastNameN,
    phoneNumberN,
    emailN
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unFocus(),
      child: Scaffold(
        body: LoaderOverlay(
          child: GetBuilder<SignupController>(builder: (signupController) {
            if (signupController.isLoading) {
              context.loaderOverlay.show();
            } else {
              executeAfterBuild(() {
                context.loaderOverlay.hide();
              });
            }
            return SafeArea(
              child: Center(
                child: Form(
                  key: signupController.formKey,
                  autovalidateMode: signupController.isSignupButtonPressed?AutovalidateMode.always:null,
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
                              color: Colors.green.shade800,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            createNewAccountN,
                            style: TextStyle(
                              color: Colors.green.shade800,
                            ),
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
                                  itemBuilder: (context, index) =>
                                      CustomTextField2(
                                    title: signUpRequirements[index],
                                  ),
                                  separatorBuilder: (context, index) =>
                                      sizedBox(height: 12),
                                  itemCount: signUpRequirements.length,
                                ),
                                sizedBox(height: 12),
                                const AddCompanyLogo(),
                                sizedBox(height: 12),
                              ],
                            ),
                          ),
                        ),
                        const ActionButton(
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 24,
                          ),
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
