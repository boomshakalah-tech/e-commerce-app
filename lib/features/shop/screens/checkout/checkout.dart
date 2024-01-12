import 'package:flutter/material.dart';

import 'package:e_commerc_app/common/widgets/custom_shapes/contianers/circular_container.dart';
import 'package:e_commerc_app/utils/constants/colors.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../utils/constants/sizes.dart';
import '../cart/widgets/cart_items.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              //Items in Cart
              const FrenzyCartItems(showAddRemoveButtons: false),
              const SizedBox(height: CustomSizes.spaceBetweenItems),

              //Coupon TextField
              const FrenzyCouponCode(),
              const SizedBox(height: CustomSizes.spaceBetweenItems),

              //Billing Section
              CustomRoundedContainer(
                showBorder: true,
                backgroundColor: isDark ? CustomColor.black : CustomColor.white,
                // ignore: prefer_const_constructors
                child: Column(
                  children: const [
                    //Pricing
                    //Divider
                    //Payment Methods
                    //Address
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
