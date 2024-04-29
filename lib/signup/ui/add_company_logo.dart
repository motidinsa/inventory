import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../core/constants/name_constants.dart';
import '../../core/styles/styles.dart';
import '../controller/signup_controller.dart';
import '../functions/signup_functions.dart';

class AddCompanyLogo extends StatelessWidget {
  const AddCompanyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupController>(
        builder: (signupController) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (signupController.tempLogoPath !=
                  null) ...[
                Container(
                  width: 60,
                  height: 60,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.file(
                    File(signupController.tempLogoPath!),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 25,
                )
              ],
              ElevatedButton(
                onPressed: () {
                  onAddLogoPressed();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade50,
                  shape: smoothRectangleBorder(),
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                ),
                child: Column(
                  children: [
                    Icon(signupController.tempLogoPath ==
                        null
                        ? Icons.add
                        : Icons.autorenew_outlined),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      signupController.tempLogoPath ==
                          null
                          ? addLogoN
                          : changeLogoN,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              if (signupController.tempLogoPath != null)
                IconButton(
                  onPressed: () {
                    onLogoImageCancelPressed();
                  },
                  icon: Icon(
                    Icons.cancel,
                    color: Colors.red,
                  ),
                )
            ],
          );
        });
  }
}
