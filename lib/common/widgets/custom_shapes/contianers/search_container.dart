import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utitlity.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CustomSearchContainer extends StatelessWidget {
  const CustomSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: CustomDeviceUtility.getSreenWidth(),
          padding: const EdgeInsets.all(CustomSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? isDark
                    ? CustomColor.dark
                    : Colors.white
                : Colors.transparent,
            borderRadius: BorderRadius.circular(CustomSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: Colors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: CustomColor.grey),
              const SizedBox(width: CustomSizes.spaceBetweenItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
