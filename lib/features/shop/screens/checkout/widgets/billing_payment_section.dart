import 'package:e_commerc_app/common/widgets/custom_shapes/contianers/circular_container.dart';
import 'package:e_commerc_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerc_app/utils/constants/colors.dart';
import 'package:e_commerc_app/utils/constants/image_strings.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return Column(
      children: [
        CustomSectionHeading(
          titleText: 'Payment Method',
          buttonTitleText: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: CustomSizes.spaceBetweenItems / 2),
        Row(
          children: [
          CustomRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: isDark ? CustomColor.light : CustomColor.white,
              padding: const EdgeInsets.all(CustomSizes.sm),
              child: const Image(
                image: AssetImage(
                  ImageStrings.paypal,
                ),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBetweenItems / 2),
            Text(' Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
