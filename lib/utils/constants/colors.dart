import 'package:flutter/material.dart';

//C for Custom add Color in the last for custom indentification
class CustomColor {
  CustomColor._();

  //App Basic Colors
  static const Color primary = Color(0xFF4B68FF);
  static const Color secondaryColor = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  //Text Colors
  static const Color textPrimaryColor = Color(0xFF333333);
  static const Color textSecondaryColor = Color(0xFF6C757D);
  static const Color textWhiteColor = Colors.white;

  //Background COlors
  static const Color light = Color(0xFFf6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackgroundColor = Color(0xFFF3F5FF);

  //Background Color for Contianers
  static const Color lightContainerColor = Color(0xFFF6F6F6);
  static Color darkContianerColor = CustomColor.white.withOpacity(0.1);

  //Button Colors
  static const buttonPrimaryColor = Color(0xFF4b68ff);
  static const buttonSecondaryColor = Color(0xFF6C757D);
  static const buttonDisabledColor = Color(0xFFC4C4C4);

  //Border Colors
  static const Color borderPrimaryColor = Color(0xFFD9D9D9);
  static const Color borderSecondaryColor = Color(0xFFE6E6E6);

  //Error and Validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color successColor = Color(0xFF388E3C);
  static const Color warningColor = Color(0xFFF57C00);
  static const Color infoColor = Color(0xFF1976D2);

  //Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGreyColor = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);

  //Gradient color
  static const Gradient linearGradientColor = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );
}
