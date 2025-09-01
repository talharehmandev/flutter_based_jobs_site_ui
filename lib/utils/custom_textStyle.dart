import 'package:flutter/material.dart';
import 'constants.dart';


class CustomTextStyle {
  static const String fontFamily = 'AnandaBlackPersonalUseRegular';

  static TextStyle customStyle({
    double fontSize = 16.0,
    FontWeight fontWeight = FontWeight.normal,
    Color color = kTextWhiteColor,
    double letterSpacing = 0.0,

    bool underline = false,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      decoration: underline ? TextDecoration.underline : null,
      decorationThickness: underline ? 2 : null,
      decorationColor: underline ? Colors.white : null, // Sets underline color to white
    );
  }
}
