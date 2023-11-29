import 'package:e_commerc_app/utils/theme/custom_themes/navigation_theme.dart';
import 'package:flutter/material.dart';

import 'package:e_commerc_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commerc_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commerc_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerc_app/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:e_commerc_app/utils/theme/custom_themes/text_form_field_theme.dart';
import 'package:e_commerc_app/utils/theme/custom_themes/text_theme.dart';
import 'custom_themes/appBar_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/icon_button_theme.dart';

//C for Custom
class CAppTheme {
  CAppTheme._(); // to avoid creating intances

  static ThemeData lighTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    chipTheme: CChipTheme.lightChipTheme,
    textTheme: CTextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: CAppBarTheme.lightAppBarTheme,
    checkboxTheme: CCHeckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: COutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: CTextFormFieldTheme.lightInputDecorationTheme,
    navigationBarTheme: CNavigationBarTheme.lightNavigationBarTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    chipTheme: CChipTheme.darkChipTheme,
    textTheme: CTextTheme.darkTextTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: CAppBarTheme.darkAppBarTheme,
    checkboxTheme: CCHeckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: COutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: CTextFormFieldTheme.darkInputDecorationTheme,
    navigationBarTheme: CNavigationBarTheme.darkNavigationBarTheme,
    iconButtonTheme: CustomIconButtonTheme.darkIconButtonTheme,
  );
}
