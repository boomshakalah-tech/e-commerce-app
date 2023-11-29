import 'package:e_commerc_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: CustomColor.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
  static final horizontalProductShadow = BoxShadow(
    color: CustomColor.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
