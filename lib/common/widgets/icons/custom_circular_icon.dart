import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class CustomCircularIcon extends StatelessWidget {
  const CustomCircularIcon({
    super.key,
    this.width,
    this.height,
    this.iconSize = CustomSizes.largeSize,
    required this.icon,
    this.iconColor,
    this.iconBackgroundColor,
    this.onPressed,
  });

  final double? width, height, iconSize;
  final IconData icon;
  final Color? iconColor;
  final Color? iconBackgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return Container(
      decoration: BoxDecoration(
        color: iconBackgroundColor != null
            ? iconBackgroundColor!
            : isDark
                ? CustomColor.black.withOpacity(0.9)
                : CustomColor.white.withOpacity(0.9),
        // ? CustomColors.darkerGrey
        // : CustomColors.lightGrey,
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
      ),
    );
  }
}
