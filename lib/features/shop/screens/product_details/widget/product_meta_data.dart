import 'package:e_commerc_app/common/widgets/images/circular_image.dart';
import 'package:e_commerc_app/common/widgets/texts/brand_title_with_verified_icon_text.dart';
import 'package:e_commerc_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerc_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerc_app/utils/constants/enums.dart';
import 'package:e_commerc_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/contianers/circular_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price and Sale Price
        Row(
          children: [
            //Sale Tag
            CustomRoundedContainer(
              radius: CustomSizes.sm,
              backgroundColor: CustomColor.secondaryColor.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: CustomSizes.sm,
                vertical: CustomSizes.xs,
              ),
              child: Text(
                '50%',
                style: theme.textTheme.labelLarge!.apply(color: CustomColor.black),
              ),
            ),
            const SizedBox(width: CustomSizes.spaceBetweenItems),

            //Price
            Text(
              '\$200',
              style: theme.textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(width: CustomSizes.spaceBetweenItems / 1.5),
            const CustomProductPriceText(price: '100', isLarge: true),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBetweenItems / 1.5),

        //Title
        const Text('Penn State Shoes - Nike Penn State Shoes 2018'),
        const SizedBox(height: CustomSizes.spaceBetweenItems / 1.5),

        //Stock Status
        Row(
          children: [
            const CustomProductTitleText(title: 'Status'),
            const SizedBox(width: CustomSizes.spaceBetweenItems),
            Text('In Stock', style: theme.textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBetweenItems / 1.5),

        //Brand
        Row(
          children: [
            CustomCircularImage(
              image: CustomImagesStrings.cosmeticsIcon,
              width: 32,
              height: 32,
              overlayColor: isDark ? CustomColor.white : CustomColor.black,
            ),
            const SizedBox(width: CustomSizes.spaceBetweenItems / 1.5),
            const CustomBrandTitlteWithVerifiedIcon(
              title: 'Nike',
              brandTextSizes: TextSizes.medium,
              iconSize: CustomSizes.iconSm,
            ),
          ],
        ),
      ],
    );
  }
}
