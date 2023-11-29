import 'package:flutter/material.dart';

class CustomIconButtonTheme {
  CustomIconButtonTheme._();

  static IconButtonThemeData darkIconButtonTheme = const IconButtonThemeData(
    style: ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.white)),
  );
}
