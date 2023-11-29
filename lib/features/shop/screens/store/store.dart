import 'package:flutter/material.dart';

import 'package:e_commerc_app/common/widgets/appbar/tabbar.dart';
import 'package:e_commerc_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerc_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerc_app/common/widgets/brands/brand_card.dart';
import 'package:e_commerc_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerc_app/common/widgets/custom_shapes/contianers/search_container.dart';
import 'package:e_commerc_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerc_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerc_app/utils/constants/colors.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            CustomCartCounterIcon(
              onPressed: () {},
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxISScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: isDark ? CustomColor.black : CustomColor.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(CustomSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        ///Search Bar
                        const SizedBox(height: CustomSizes.spaceBetweenItems),
                        const CustomSearchContainer(
                          padding: EdgeInsets.zero,
                          text: 'Search in the Store',
                          showBorder: true,
                          showBackground: false,
                        ),
                        const SizedBox(height: CustomSizes.spaceBetweenSections),

                        //Featured Brands
                        CustomSectionHeading(
                          titleText: 'Featured Brands',
                          onPressed: () {},
                        ),

                        //Brands
                        CustomGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const BrandCard(showBorder: false);
                          },
                        ),
                      ],
                    ),
                  ),

                  //Tabs
                  bottom: const CustomTabBar(tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electoronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ])),
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
