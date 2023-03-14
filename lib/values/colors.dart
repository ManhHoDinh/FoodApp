import 'package:flutter/material.dart';

class ColorPalette {
  static const Color primaryColor = Color(0xffF5F5F8);
  static const Color secondColor = Color(0xffFFFFFF);
  static const Color highlightColor = Color(0xffFA4A0C);
  static const Color blackText = Color(0xFF000000);
  static const Color greyText = Color(0xFF9A9A9D);
}

class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [
      ColorPalette.secondColor,
      ColorPalette.primaryColor,
    ],
  );
}
