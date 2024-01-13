import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/rounded_image.dart';
import '../../texts/brand_title_with_verified_icon_text.dart';
import '../../texts/product_title_text.dart';

class CustomCartItem extends StatelessWidget {
  const CustomCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //image
        CustomRoundedImage(
          imageUrl: ImageStrings.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(CustomSizes.sm),
          backgroundColor: CustomHelperFuntions.isDarkMode(context) ? CustomColor.darkerGrey : CustomColor.light,
        ),
        const SizedBox(width: CustomSizes.spaceBetweenItems),

        //Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBrandTitlteWithVerifiedIcon(title: 'Nike'),
              const Flexible(child: CustomProductTitleText(title: 'Nike Cleaveland Jacket', maxline: 1)),
              //Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'UK 08 ', style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
