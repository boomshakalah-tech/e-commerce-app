import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CNavigationBarTheme {
  const CNavigationBarTheme._();

  static final NavigationBarThemeData lightNavigationBarTheme = NavigationBarThemeData(
    indicatorColor: CustomColor.black.withOpacity(0.1),
    backgroundColor: CustomColor.white,
    labelTextStyle: const MaterialStatePropertyAll(TextStyle(color: CustomColor.black)),
    iconTheme: const MaterialStatePropertyAll(IconThemeData(color: CustomColor.black)),
  );

  static final NavigationBarThemeData darkNavigationBarTheme = NavigationBarThemeData(
    indicatorColor: CustomColor.white.withOpacity(0.1),
    backgroundColor: Colors.black,
    labelTextStyle: const MaterialStatePropertyAll(TextStyle(color: Colors.white)),
    iconTheme: const MaterialStatePropertyAll(IconThemeData(color: Colors.white)),
  );
}
