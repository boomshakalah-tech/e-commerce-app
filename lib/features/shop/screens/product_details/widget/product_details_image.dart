import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/custom_circular_icon.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ProductDetailsImage extends StatelessWidget {
  const ProductDetailsImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return CustomCurvedEdgesWidget(
      child: Container(
        color: isDark ? CustomColor.darkerGrey : CustomColor.light,
        child: Stack(
          children: [
            //Main large image
            const SizedBox(
              width: double.infinity,
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(CustomSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(CustomImagesStrings.productImage2),
                  ),
                ),
              ),
            ),

            //Image Slider'
            Positioned(
              right: 0,
              bottom: 30,
              left: CustomSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: CustomSizes.spaceBetweenItems),
                  itemBuilder: (context, index) => CustomRoundedImage(
                    width: 80,
                    backgroundColor: isDark ? CustomColor.dark : CustomColor.white,
                    border: Border.all(color: CustomColor.primary),
                    padding: const EdgeInsets.all(CustomSizes.sm),
                    imageUrl: CustomImagesStrings.productImage2,
                  ),
                ),
              ),
            ),

            //Appbar icons
            const CustomAppBar(
              showBackArrow: true,
              actions: [
                CustomCircularIcon(icon: Iconsax.heart5, iconColor: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
