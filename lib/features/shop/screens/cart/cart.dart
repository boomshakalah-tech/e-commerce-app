import 'package:e_commerc_app/features/shop/screens/checkout/checkout.dart';
import 'package:flutter/material.dart';

import 'package:e_commerc_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerc_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(CustomSizes.defaultSpace),
        //Items in the cart
        child: FrenzyCartItems(),
      ),

      //Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(CustomSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: const Text('Checkout \$233.1'),
        ),
      ),
    );
  }
}
