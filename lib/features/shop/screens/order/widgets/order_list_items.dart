import 'package:flutter/material.dart';

import 'package:e_commerc_app/common/widgets/custom_shapes/contianers/circular_container.dart';
import 'package:e_commerc_app/utils/constants/colors.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      separatorBuilder: (context, index) => const SizedBox(height: CustomSizes.spaceBetweenItems),
      itemBuilder: (_, index) => CustomRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(CustomSizes.md),
        backgroundColor: isDark ? CustomColor.dark : CustomColor.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ROW 1
            Row(
              children: [
                //Icon
                Icon(Iconsax.ship, color: isDark ? Colors.white : Colors.black),
                const SizedBox(width: CustomSizes.spaceBetweenItems / 2),

                //Status & Date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: CustomColor.primary, fontWeightDelta: 1),
                      ),
                      Text('January 14, 2024', style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),

                IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_34, size: CustomSizes.iconSm)),
              ],
            ),

            //spacing
            const SizedBox(height: CustomSizes.spaceBetweenItems),

            // ROW 2
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //Icon
                      Icon(Iconsax.tag, color: isDark ? Colors.white : Colors.black),
                      const SizedBox(width: CustomSizes.spaceBetweenItems / 2),

                      //Status & Date
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelMedium),
                            Text('[#2516f1]', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      //Icon
                      Icon(Iconsax.calendar, color: isDark ? Colors.white : Colors.black),
                      const SizedBox(width: CustomSizes.spaceBetweenItems / 2),

                      //Status & Date
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Shipping date', style: Theme.of(context).textTheme.labelMedium),
                            const FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text('January 21, 2024'),
                            ),
                            // Text(
                            //   'January 21, 2024',
                            //   style: Theme.of(context).textTheme.titleMedium,
                            //   overflow: TextOverflow.ellipsis,
                            //   maxLines: 1,

                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
