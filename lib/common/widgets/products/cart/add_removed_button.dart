import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/custom_circular_icon.dart';

class CustomProductQuantityWithAddRemoveButton extends StatelessWidget {
  const CustomProductQuantityWithAddRemoveButton({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          iconSize: CustomSizes.md,
          iconColor: isDark ? CustomColor.white : CustomColor.black,
          iconBackgroundColor: isDark ? CustomColor.darkerGrey : CustomColor.lightGrey,
        ),
        const SizedBox(width: CustomSizes.spaceBetweenItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: CustomSizes.spaceBetweenItems),
        const CustomCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          iconSize: CustomSizes.md,
          iconColor: CustomColor.white,
          iconBackgroundColor: CustomColor.primary,
        ),
      ],
    );
  }
}
