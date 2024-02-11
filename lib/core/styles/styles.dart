import 'package:figma_squircle/figma_squircle.dart';

smoothBorderRadius({double radius = 10}) => SmoothBorderRadius(
  cornerRadius: radius,
  cornerSmoothing: 1,
);