import 'package:e_commerc_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:flutter/material.dart';

import 'package:e_commerc_app/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:e_commerc_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerc_app/features/shop/screens/product_reviews/widgets/overall_rating_progress_indicator.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: const CustomAppBar(
          title: Text('Reviews & Ratings'), showBackArrow: true),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified and are from the people who uses the same type if device that you use.'),
              const SizedBox(height: CustomSizes.spaceBetweenItems / 2),

              //Overall Product Ratings
              const OverallProductRating(),
              const CustomRatingBarIndicator(rating: 2.2),
              Text('1,233,122', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: CustomSizes.spaceBetweenSections),

              //Yser Review List
              const UserReviewCard(name: 'Nilo Butay'),
              const UserReviewCard(name: 'Sandara Godz'),
            ],
          ),
        ),
      ),
    );
  }
}
