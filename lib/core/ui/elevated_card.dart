import 'package:flutter/material.dart';

import 'package:inventory/core/styles/styles.dart';

class ElevatedCard extends StatelessWidget {
  final Widget child;
  final double horizontalMargin;
  final double verticalMargin;
  final double verticalPadding;
  final double horizontalPadding;
  final double blurRadius;
  final Color? color;

  const ElevatedCard({
    super.key,
    required this.child,
    this.horizontalMargin = 20,
    this.verticalMargin = 0,
    this.blurRadius = 12,
    this.verticalPadding = 20,
    this.horizontalPadding = 20,this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: horizontalMargin,
        vertical: verticalMargin,
      ),
      decoration: BoxDecoration(
          borderRadius: smoothBorderRadius(radius: 20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: blurRadius,
              spreadRadius: 1,
            ),
          ]),
      child: Card(
        // surfaceTintColor: Colors.white,
        color: color,
        shape: smoothRectangleBorder(radius: 20),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          child: child,
        ),
      ),
    );
  }
}
