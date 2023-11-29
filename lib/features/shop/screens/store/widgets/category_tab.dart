import 'package:e_commerc_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerc_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerc_app/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              ///Brands
              const BrandShowCase(
                images: [
                  CustomImagesStrings.productImage1,
                  CustomImagesStrings.productImage2,
                  CustomImagesStrings.productImage3,
                ],
              ),
              const BrandShowCase(
                images: [
                  CustomImagesStrings.productImage1,
                  CustomImagesStrings.productImage2,
                  CustomImagesStrings.productImage3,
                ],
              ),
              const SizedBox(height: CustomSizes.spaceBetweenItems),

              ///Products
              CustomSectionHeading(titleText: 'You might like', onPressed: () {}),
              const SizedBox(height: CustomSizes.spaceBetweenItems),
              CustomGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const CustomProductVerticalCard(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
