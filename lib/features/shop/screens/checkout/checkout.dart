import 'package:e_commerc_app/common/widgets/succes_screen/success_screen.dart';
import 'package:e_commerc_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerc_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerc_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerc_app/navigation_menu.dart';
import 'package:e_commerc_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import 'package:e_commerc_app/common/widgets/custom_shapes/contianers/circular_container.dart';
import 'package:e_commerc_app/utils/constants/colors.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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
                padding: const EdgeInsets.all(CustomSizes.md),
                showBorder: true,
                backgroundColor: isDark ? CustomColor.black : CustomColor.white,
                // ignore: prefer_const_constructors
                child: Column(
                  children: const [
                    //Pricing
                    BillingAmountSection(),
                    SizedBox(height: CustomSizes.spaceBetweenItems),

                    //Divider
                    Divider(),
                    SizedBox(height: CustomSizes.spaceBetweenItems),

                    //Payment Methods
                    BillingPaymentSection(),
                    SizedBox(height: CustomSizes.spaceBetweenItems),

                    //Address
                    BillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(CustomSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: ImageStrings.succesfulPayment,
              title: 'Payment Success',
              subtitle: 'Your Item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: const Text('Checkout \$233.1'),
        ),
      ),
    );
  }
}
