import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:e_commerc_app/common/widgets/custom_shapes/contianers/circular_container.dart';
import 'package:e_commerc_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerc_app/common/widgets/texts/brand_title_with_verified_icon_text.dart';
import 'package:e_commerc_app/utils/constants/image_strings.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import '../../../../features/shop/screens/product_details/product_detail.dart';
import '../../../../utils/constants/colors.dart';
import '../../../styles/shodows.dart';
import '../../icons/custom_circular_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class CustomProductVerticalCard extends StatelessWidget {
  const CustomProductVerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [CShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(CustomSizes.productImageRadius),
        color: isDark ? CustomColor.darkerGrey : CustomColor.white,
      ),
      child: Column(
        children: [
          //Thumbnail. whislist BUtton, Discount Tag
          CustomRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(CustomSizes.sm),
            backgroundColor: isDark ? CustomColor.dark : CustomColor.white,
            child: Stack(
              children: [
                //Thumbnail Image
                GestureDetector(
                  onTap: () => Get.to(() => const ProductDetailScreen()),
                  child: const Center(
                    child: CustomRoundedImage(
                      height: 150,
                      imageUrl: ImageStrings.productImage2,
                      applyImageRadius: true,
                    ),
                  ),
                ),

                //Sale tag
                Positioned(
                  child: CustomRoundedContainer(
                    radius: CustomSizes.sm,
                    backgroundColor: CustomColor.secondaryColor.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: CustomSizes.sm,
                      vertical: CustomSizes.xs,
                    ),
                    child: Text(
                      '50%',
                      style: Theme.of(context).textTheme.labelLarge!.apply(color: CustomColor.black),
                    ),
                  ),
                ),

                //Fovourite Icon
                const Positioned(
                  top: -15,
                  right: -12,
                  child: CustomCircularIcon(
                    icon: Iconsax.heart5,
                    iconColor: Colors.red,
                    iconBackgroundColor: Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: CustomSizes.spaceBetweenItems / 2),

          //Details
          GestureDetector(
            onTap: () => Get.to(() => const ProductDetailScreen()),
            child: const Padding(
              padding: EdgeInsets.only(left: CustomSizes.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomProductTitleText(
                      title: 'Penn State Shoes - Nike Penn State Swwhoes 2018',
                      smallSize: true,
                    ),
                    SizedBox(height: CustomSizes.spaceBetweenItems / 2),
                    CustomBrandTitlteWithVerifiedIcon(title: 'Nike'),
                  ],
                ),
              ),
            ),
          ),
          //space here keep the height if each Box some in case 1 or 2 lines of headings
          const Spacer(),
          //Price row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Price
              const Padding(
                padding: EdgeInsets.only(left: CustomSizes.sm),
                child: CustomProductPriceText(price: '53'),
              ),

              //Add to cart button
              Container(
                decoration: const BoxDecoration(
                  color: CustomColor.dark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(CustomSizes.cardRadiusMd),
                    bottomRight: Radius.circular(CustomSizes.productImageRadius),
                  ),
                ),
                child: const SizedBox(
                  width: CustomSizes.iconLg * 1.2,
                  height: CustomSizes.iconLg * 1.2,
                  child: Center(
                    child: Icon(
                      Iconsax.add,
                      color: CustomColor.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
