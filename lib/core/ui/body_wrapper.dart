import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/controller/app_controller.dart';

import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/functions/widget_functions.dart';

class BodyWrapper extends StatelessWidget {
  final Widget body;
  final String pageName;

  BodyWrapper({
    super.key,
    required this.body,
    required this.pageName,
  });

  final AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (_) {
        appController.currentPages.removeLast();
      },
      child: GestureDetector(
        onTap: () => unFocus(),
        child: Scaffold(
          backgroundColor: Colors.green.shade50,
          body: SafeArea(
            child: Scaffold(
              appBar: appBar(
                pageName: pageName,
              ),
              body: body,
            ),
          ),
        ),
      ),
    );
  }
}
