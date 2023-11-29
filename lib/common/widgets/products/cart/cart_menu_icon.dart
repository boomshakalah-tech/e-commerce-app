import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class CustomCartCounterIcon extends StatelessWidget {
  const CustomCartCounterIcon({
    super.key,
    this.iconColor,
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(Iconsax.shopping_bag),
          color: iconColor,
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: CustomColor.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '5',
                style: Theme.of(context).textTheme.labelSmall!.apply(color: CustomColor.textWhiteColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
