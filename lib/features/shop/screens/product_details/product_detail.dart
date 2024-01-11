import 'package:e_commerc_app/features/shop/screens/product_reviews/product_review.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import 'package:e_commerc_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerc_app/features/shop/screens/product_details/widget/bottom_addto_cart.dart';
import 'package:e_commerc_app/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:e_commerc_app/features/shop/screens/product_details/widget/product_details_image.dart';
import 'package:e_commerc_app/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:e_commerc_app/features/shop/screens/product_details/widget/rating_and_share.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDark = CHelperFuntions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product Image Slider
            const ProductDetailsImage(),

            //Product Details
            Padding(
              padding: const EdgeInsets.only(
                left: CustomSizes.defaultSpace,
                bottom: CustomSizes.defaultSpace,
                right: CustomSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  //Rating and share
                  const RatingAndShare(),

                  //Price Titlte Stock Brand
                  const ProductMetaData(),

                  //Attributes
                  const ProductAttributes(),
                  const SizedBox(height: CustomSizes.spaceBetweenSections),

                  //Checkout Buttom
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(height: CustomSizes.spaceBetweenItems),

                  //Description
                  const CustomSectionHeading(
                    titleText: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: CustomSizes.spaceBetweenItems),
                  const ReadMoreText(
                    'This is a Product description fro Blue Nike shoes. There are more things that can be added it this line but i kinda not in the mode safa sfasjfoasyhfoiashdoashdoashdoashdoashodhasoidhsioahdiosadhasoi',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: '  Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  //Reviews
                  const Divider(),
                  const SizedBox(height: CustomSizes.spaceBetweenItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomSectionHeading(
                        titleText: 'Reviews(1000000000)',
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewScreen()),
                          icon: const Icon(Iconsax.arrow_right_3, size: 18)),
                    ],
                  ),
                  const SizedBox(height: CustomSizes.spaceBetweenSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
