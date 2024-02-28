import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/cupertino.dart';

smoothBorderRadius({double radius = 10}) => SmoothBorderRadius(
      cornerRadius: radius,
      cornerSmoothing: 1,
    );

smoothRectangleBorder({double radius = 10, BorderSide? side}) =>
    SmoothRectangleBorder(
      borderRadius: smoothBorderRadius(radius: radius),
      side: side ?? BorderSide.none,
    );

bold() => FontWeight.bold;
