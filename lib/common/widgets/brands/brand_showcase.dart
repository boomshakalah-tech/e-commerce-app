import 'package:flutter/material.dart';

import 'package:e_commerc_app/common/widgets/brands/brand_card.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/contianers/circular_container.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return CustomRoundedContainer(
      showBorder: true,
      borderColor: CustomColor.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(CustomSizes.md),
      margin: const EdgeInsets.only(bottom: CustomSizes.spaceBetweenItems),
      child: Column(
        children: [
          ///Brand with Products Count
          const BrandCard(showBorder: false),
          const SizedBox(height: CustomSizes.spaceBetweenItems),

          ///Brand Top 3 Product Images
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, isDark, context)).toList(),
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, bool isDark, context) {
  return Expanded(
    child: CustomRoundedContainer(
      height: 100,
      backgroundColor: isDark ? CustomColor.darkerGrey : CustomColor.light,
      margin: const EdgeInsets.only(right: CustomSizes.sm),
      padding: const EdgeInsets.all(CustomSizes.md),
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.contain,
      ),
    ),
  );
}
