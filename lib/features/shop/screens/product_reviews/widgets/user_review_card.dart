import 'package:flutter/material.dart';

import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import 'package:e_commerc_app/common/widgets/custom_shapes/contianers/circular_container.dart';
import 'package:e_commerc_app/utils/constants/colors.dart';
import 'package:e_commerc_app/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:e_commerc_app/utils/constants/image_strings.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import '../../../../../common/widgets/readmoretext/read_more_text.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(ImageStrings.userProfile2)),
                const SizedBox(width: CustomSizes.spaceBetweenItems),
                Text(name, style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBetweenItems),

        //User Review
        Row(
          children: [
            const CustomRatingBarIndicator(rating: 5),
            const SizedBox(width: CustomSizes.spaceBetweenItems),
            Text('Nov. 1, 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBetweenItems),

        //User Description
        const CustomReadMoreText(
          comment:
              'This app is so good i can easily buy things I want and also the user interface is so user friendly. safsafsafsafsaf as fasfsa fas fsa fsa fas fas',
        ),
        const SizedBox(height: CustomSizes.spaceBetweenItems),

        //Company Review
        CustomRoundedContainer(
          backgroundColor: isDark ? CustomColor.darkerGrey : CustomColor.grey,
          child: Padding(
            padding: const EdgeInsets.all(CustomSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Palit NAKAMO.', style: Theme.of(context).textTheme.bodyLarge),
                    Text('Nov. 4, 2023', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: CustomSizes.spaceBetweenItems),

                //Store admin reply
                const CustomReadMoreText(
                  comment:
                      'This app is so good i can easily buy things I want and also the user interface is so user friendly. safsafsafsafsaf as fasfsa fas fsa fsa fas fas',
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: CustomSizes.spaceBetweenItems),
      ],
    );
  }
}
