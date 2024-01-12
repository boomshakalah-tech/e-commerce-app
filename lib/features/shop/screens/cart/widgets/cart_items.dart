import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_removed_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class FrenzyCartItems extends StatelessWidget {
  const FrenzyCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(height: CustomSizes.spaceBetweenSections),
      itemBuilder: (_, index) => Column(
        children: [
          //Cart Items
          const CustomCartItem(),
          if (showAddRemoveButtons) const SizedBox(height: CustomSizes.spaceBetweenItems),

          //add Removed Button Row with total Price
          if (showAddRemoveButtons)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 70),

                    ///Add Remove Buttons
                    CustomProductQuantityWithAddRemoveButton(isDark: isDark),
                  ],
                ),

                //Product Total Price
                const CustomProductPriceText(price: '122'),
              ],
            ),
        ],
      ),
    );
  }
}
