import 'package:flutter/material.dart';

import 'package:my_inventory/core/styles/styles.dart';

class ElevatedCard extends StatelessWidget {
  final Widget child;
  final double? horizontalMargin;
  final double? verticalMargin;
  final double? verticalPadding;
  final double? horizontalPadding;
  final double? blurRadius;

  const ElevatedCard({
    super.key,
    required this.child,
    this.horizontalMargin,
    this.verticalMargin,
    this.blurRadius,
    this.verticalPadding,
    this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: horizontalMargin ?? 20,
        vertical: verticalMargin ?? 0,
      ),
      decoration: BoxDecoration(
          borderRadius: smoothBorderRadius(radius: 20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: blurRadius ?? 15,
              spreadRadius: 0,
            ),
          ]),
      child: Card(
        surfaceTintColor: Colors.white,
        shape: smoothRectangleBorder(radius: 20),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 20,
            vertical: verticalPadding ?? 20,
          ),
          child: child,
        ),
      ),
    );
  }
}
