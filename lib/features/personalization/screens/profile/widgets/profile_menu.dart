import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class CustomProfileMenu extends StatelessWidget {
  const CustomProfileMenu({
    super.key,
    required this.value,
    required this.title,
    this.icondata = Iconsax.arrow_right_34,
    this.iconSize = 15.0,
    this.onTap,
  });

  final String value, title;
  final IconData? icondata;
  final double? iconSize;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: CustomSizes.spaceBetweenItems / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Icon(icondata, size: iconSize),
          ],
        ),
      ),
    );
  }
}
