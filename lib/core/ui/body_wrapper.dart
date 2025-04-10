import 'package:flutter/material.dart';
import 'package:inventory/core/functions/widget_functions.dart';

import 'package:inventory/core/functions/helper_functions.dart';

class BodyWrapper extends StatelessWidget {
  final Widget body;
  final String pageName;

  const BodyWrapper({
    super.key,
    required this.body,
    required this.pageName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unFocus(),
      child: Scaffold(
        backgroundColor: Colors.green.shade50,
        body: SafeArea(
          child: Scaffold(
            appBar: appBar(pageName: pageName, context: context),
            body: body,
          ),
        ),
      ),
    );
  }
}
