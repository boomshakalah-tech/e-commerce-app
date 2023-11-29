import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class CSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: CustomSizes.appBarHeight,
    bottom: CustomSizes.defaultSpace,
    left: CustomSizes.defaultSpace,
    right: CustomSizes.defaultSpace,
  );
}
