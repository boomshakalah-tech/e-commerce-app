import 'package:e_commerc_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerc_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import 'package:e_commerc_app/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:e_commerc_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:e_commerc_app/features/shop/screens/home/widgets/home_appbar.dart';
import '../../../../common/widgets/custom_shapes/contianers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/contianers/search_container.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Header Stack bottom
            const CustomPrimaryHeaderContainer(
              child: Column(
                children: [
                  //appbar
                  HomeAppBar(),
                  SizedBox(height: CustomSizes.spaceBetweenItems),

                  //seach bar
                  CustomSearchContainer(text: 'Search in the store'),
                  SizedBox(height: CustomSizes.spaceBetweenItems),

                  //Categories
                  Padding(
                    padding: EdgeInsets.only(left: CustomSizes.defaultSpace),
                    child: Column(
                      children: [
                        //heading
                        CustomSectionHeading(
                          titleText: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: CustomSizes.spaceBetweenItems),

                        //Categories
                        HomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: CustomSizes.spaceBetweenSections),
                ],
              ),
            ),

            //Body
            Padding(
              padding: const EdgeInsets.all(CustomSizes.defaultSpace),
              child: Column(
                children: [
                  //Promo Slider
                  const CustomPromoSlider(
                      banners: [CustomImagesStrings.firstBanner, CustomImagesStrings.seccondBanner, CustomImagesStrings.thirdBanner]),
                  const SizedBox(height: CustomSizes.spaceBetweenItems),

                  //Heading
                  CustomSectionHeading(
                    titleText: 'Popular Products',
                    onPressed: () {},
                  ),
                  const SizedBox(height: CustomSizes.spaceBetweenItems),

                  //Popular Products
                  CustomGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const CustomProductVerticalCard(),
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
