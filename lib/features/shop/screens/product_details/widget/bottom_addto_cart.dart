import 'package:e_commerc_app/common/widgets/icons/custom_circular_icon.dart';
import 'package:e_commerc_app/utils/constants/colors.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace, vertical: CustomSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: isDark ? CustomColor.darkerGrey : CustomColor.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(CustomSizes.cardRadiusLg),
          topRight: Radius.circular(CustomSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CustomCircularIcon(
                icon: Iconsax.minus,
                iconBackgroundColor: CustomColor.error,
                width: 40,
                height: 40,
                iconColor: CustomColor.white,
              ),
              const SizedBox(width: CustomSizes.spaceBetweenItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: CustomSizes.spaceBetweenItems),
              const CustomCircularIcon(
                icon: Iconsax.add,
                iconBackgroundColor: CustomColor.black,
                width: 40,
                height: 40,
                iconColor: CustomColor.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(CustomSizes.md),
              backgroundColor: CustomColor.black,
              side: const BorderSide(color: CustomColor.black),
            ),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
