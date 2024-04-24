import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/action_button.dart';

import '../../core/functions/core_functions.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  // final SignUpController signUpController = Get.find();
  final GlobalKey<FormState> formState = GlobalKey<FormState>();
  final List<String> signUpRequirements = [
    'Company name',
    'First name',
    'Last name',
    'Phone number'
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unFocus(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        // backgroundColor: Colors.green.shade300,
        // appBar: appbar(
        //   isLogoAppbar: true,
        //   backButtonColor: wujoWhiteSmoke(),
        // ),
        body: LoaderOverlay(
          child: SafeArea(
            child: Center(
              child: Form(
                key: formState,
                // autovalidateMode: name == signIn()
                //     ? Get.find<LoginController>().isSignInPressed.isTrue
                //     ? AutovalidateMode.onUserInteraction
                //     : null
                //     : Get.find<SignUpController>().isSignUpPressed.isTrue
                //     ? AutovalidateMode.onUserInteraction
                //     : null,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Center(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: bold(),
                              color: Colors.green.shade800),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Create new account',
                          style: TextStyle(
                              // fontSize: 16,
                              // fontWeight: bold(),
                              color: Colors.green.shade800),
                        ),
                      ),
                      sizedBox(height: 16),
                      Card(
                        color: Colors.grey.shade50,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: ListView(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              // sizedBox(height: 16),
                              // Text(
                              //   'Sign up',
                              //   style: TextStyle(
                              //     fontSize: 24,
                              //     fontWeight: bold(),
                              //     color: Colors.green.shade800
                              //   ),
                              // ),
                              sizedBox(height: 20),
                              ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) => TextFormField(
                                  // style: textStyle(fontSize: font16()),
                                  // obscureText: isPasswordVisible == true ? false : true,
                                  // keyboardType: keyboardType(name: widget.name),
                                  // readOnly: readOnlyValue(widget.name),
                                  // controller: textEditingController,
                                  // focusNode: focusNode,
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
                                    prefixIcon: Icon(Icons.person),

                                    // hintText: widget.name == phone() ? phone() : null,
                                    // hintStyle: textStyle(fontSize: font16()),
                                    labelText: signUpRequirements[index],
                                    // labelStyle: textStyle(
                                    //   fontSize: font16(),
                                    //   fontWeight: FontWeight.w500,
                                    // ),
                                    // errorStyle: textStyle(
                                    //   fontWeight: FontWeight.w500,
                                    //   fontSize: font12(),
                                    // ),
                                  ),
                                ),
                                separatorBuilder: (context, index) =>
                                    sizedBox(height: 12),
                                itemCount: signUpRequirements.length,
                              ),
                              // ActionButton(
                              //   redirectFrom: 'signup',
                              //   backgroundColor: Colors.green.shade300,
                              //   textColor: Colors.white,
                              // ),
                              sizedBox(height: 20)
                            ],
                          ),
                        ),
                      ),
                      ActionButton(
                        redirectFrom: 'signup',
                        padding: EdgeInsets.symmetric(
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
