import 'package:e_commerc_app/common/widgets/icons/custom_circular_icon.dart';
import 'package:e_commerc_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerc_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerc_app/features/shop/screens/home/home.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Wislist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CustomCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(() => const HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              CustomGridLayout(
                itemCount: 6,
                itemBuilder: (_, index) => const CustomProductVerticalCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
