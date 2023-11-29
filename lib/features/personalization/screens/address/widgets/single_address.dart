import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/contianers/circular_container.dart';
import '../../../../../utils/constants/colors.dart';

class CustomSingleAddress extends StatelessWidget {
  const CustomSingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return CustomRoundedContainer(
      padding: const EdgeInsets.all(CustomSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? CustomColor.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : isDark
              ? CustomColor.darkerGrey
              : CustomColor.darkGrey,
      margin: const EdgeInsets.only(bottom: CustomSizes.spaceBetweenItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: isDark ? CustomColor.light : CustomColor.dark,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Zeus Kaizen',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: CustomSizes.sm / 2),
              const Text(
                '09123456789',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: CustomSizes.sm / 2),
              const Text(
                'San Lucas Street Hilongos, Leyte sahjksahf jkasdfsa',
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
