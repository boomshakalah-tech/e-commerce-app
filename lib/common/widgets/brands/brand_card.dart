import 'package:flutter/material.dart';

import '../custom_shapes/contianers/circular_container.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_with_verified_icon_text.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    this.showBorder = true,
  });

  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: CustomRoundedContainer(
        padding: const EdgeInsets.all(CustomSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            ///Icon
            Flexible(
              child: CustomCircularImage(
                image: CustomImagesStrings.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: isDark ? CustomColor.white : CustomColor.black,
              ),
            ),
            const SizedBox(width: CustomSizes.spaceBetweenItems / 2),

            //Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomBrandTitlteWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSizes: TextSizes.large,
                  ),
                  Text(
                    '267 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
