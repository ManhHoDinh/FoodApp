import 'package:flutter/material.dart';

import 'colors.dart';

extension ExtendedTextStyle on TextStyle {
  TextStyle get light {
    return copyWith(fontWeight: FontWeight.w300, fontFamily: AppFonts.abel);
  }

  TextStyle get regular {
    return copyWith(fontWeight: FontWeight.w400, fontFamily: AppFonts.abel);
  }

  TextStyle get italic {
    return copyWith(
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.italic,
        fontFamily: AppFonts.abel);
  }

  TextStyle get medium {
    return copyWith(fontWeight: FontWeight.w500);
  }

  TextStyle get fontHeader {
    return copyWith(fontSize: 22, height: 22 / 20, fontFamily: AppFonts.abel);
  }

  TextStyle get fontCaption {
    return copyWith(fontSize: 12, height: 12 / 10, fontFamily: AppFonts.abel);
  }

  TextStyle get semibold {
    return copyWith(fontWeight: FontWeight.w600, fontFamily: AppFonts.abel);
  }

  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.w700, fontFamily: AppFonts.abel);
  }

  TextStyle get primaryTextColor {
    return copyWith(
        color: ColorPalette.primaryColor, fontFamily: AppFonts.abel);
  }

  TextStyle get whiteTextColor {
    return copyWith(color: Colors.white, fontFamily: AppFonts.abel);
  }

  // convenience functions
  TextStyle setColor(Color color) {
    return copyWith(color: color);
  }

  TextStyle setTextSize(double size) {
    return copyWith(fontSize: size);
  }
}

class TextStyles {
  TextStyles(this.context);

  BuildContext? context;

  static const TextStyle defaultStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 16 / 14,
      fontFamily: AppFonts.abel);
  static const TextStyle h1 = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w400,
      height: 16 / 14,
      fontFamily: AppFonts.abel);
  static const TextStyle h2 = TextStyle(
      fontSize: 27.2,
      fontWeight: FontWeight.w400,
      height: 16 / 14,
      fontFamily: AppFonts.abel);
  static const TextStyle h3 = TextStyle(
      fontSize: 24.4,
      fontWeight: FontWeight.w400,
      height: 16 / 14,
      fontFamily: AppFonts.abel);
  static const TextStyle h4 = TextStyle(
      fontSize: 21.6,
      fontWeight: FontWeight.w400,
      height: 16 / 14,
      fontFamily: AppFonts.abel);
  static const TextStyle h5 = TextStyle(
      fontSize: 18.8,
      fontWeight: FontWeight.w400,
      height: 16 / 14,
      fontFamily: AppFonts.abel);
  static const TextStyle h6 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 16 / 14,
      fontFamily: AppFonts.abel);
}

// How to use?
// Text('test text', style: TextStyles.normalText.semibold.whiteColor);
// Text('test text', style: TextStyles.itemText.whiteColor.bold);
class AppFonts {
  static const String abel = 'Abel';
  static const String karla = 'Karla';
  
}
