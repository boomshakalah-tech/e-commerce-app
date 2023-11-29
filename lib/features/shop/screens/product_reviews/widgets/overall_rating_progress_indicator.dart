import 'package:e_commerc_app/features/shop/screens/product_reviews/widgets/progress_indicator.dart';
import 'package:e_commerc_app/utils/constants/colors.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '2.2',
            style: Theme.of(context).textTheme.displayLarge!.apply(
                  color: isDark ? CustomColor.grey : Colors.black,
                ),
          ),
        ),
        const Expanded(
          flex: 8,
          child: Column(
            children: [
              CustomRatingProgressIndicator(text: '5', value: .9),
              CustomRatingProgressIndicator(text: '4', value: .6),
              CustomRatingProgressIndicator(text: '3', value: .4),
              CustomRatingProgressIndicator(text: '2', value: .2),
              CustomRatingProgressIndicator(text: '1', value: .1),
            ],
          ),
        ),
      ],
    );
  }
}
