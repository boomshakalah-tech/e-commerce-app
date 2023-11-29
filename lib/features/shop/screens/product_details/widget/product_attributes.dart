import 'package:flutter/material.dart';

import 'package:e_commerc_app/common/widgets/custom_shapes/contianers/circular_container.dart';
import 'package:e_commerc_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerc_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerc_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerc_app/utils/constants/colors.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import '../../../../../common/widgets/chips/choice_chip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return Column(
      children: [
        //Selected Attribute Pricing and Description
        CustomRoundedContainer(
          padding: const EdgeInsets.all(CustomSizes.md),
          backgroundColor: isDark ? CustomColor.darkerGrey : CustomColor.grey,
          child: Column(
            children: [
              //Title, Price and Stack Status
              Row(
                children: [
                  const CustomSectionHeading(
                    titleText: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: CustomSizes.spaceBetweenItems),

                  //
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CustomProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          // Actual Price
                          Text(
                            '\$12',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: CustomSizes.spaceBetweenItems / 1.5),

                          // Sale Price
                          const CustomProductPriceText(price: '10'),
                        ],
                      ),

                      //Stock Status
                      Row(
                        children: [
                          const CustomProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: CustomSizes.spaceBetweenItems),

              //Variation Description
              const CustomProductTitleText(
                title: 'This is the Description of the Product and it cat go upto max 4 lines.',
                smallSize: true,
                maxline: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: CustomSizes.spaceBetweenItems),

        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSectionHeading(titleText: 'Colors', showActionButton: false),
            const SizedBox(height: CustomSizes.spaceBetweenItems / 2),
            Wrap(
              spacing: 5,
              children: [
                CustomChoiceChip(selected: false, text: 'Green', onSelected: (value) {}),
                CustomChoiceChip(selected: true, text: 'Blue', onSelected: (value) {}),
                CustomChoiceChip(selected: false, text: 'Yellow', onSelected: (value) {}),
                CustomChoiceChip(selected: false, text: 'Indigo', onSelected: (value) {}),
                CustomChoiceChip(selected: false, text: 'Grey', onSelected: (value) {}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSectionHeading(titleText: 'Sizes', showActionButton: false),
            const SizedBox(height: CustomSizes.spaceBetweenItems / 2),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChip(selected: true, text: 'EU 34', onSelected: (value) {}),
                CustomChoiceChip(selected: false, text: 'EU 36', onSelected: (value) {}),
                CustomChoiceChip(selected: false, text: 'EU 38', onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
