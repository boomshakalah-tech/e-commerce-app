import 'package:flutter/material.dart';

class CIconButtonTheme {
  CIconButtonTheme._();

  static IconButtonThemeData darkIconButtonTheme = const IconButtonThemeData(
    style: ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.white)),
  );
}
