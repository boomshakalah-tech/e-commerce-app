import 'package:e_commerc_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerc_app/features/shop/screens/order/widgets/order_list_items.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(CustomSizes.defaultSpace),

        //List of Orders
        child: OrderListItem(),
      ),
    );
  }
}
