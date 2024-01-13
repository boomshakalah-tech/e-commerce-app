import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: CustomColor.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: CustomSizes.iconMd,
              width: CustomSizes.iconMd,
              image: AssetImage(
                ImageStrings.googleLogo,
              ),
            ),
          ),
        ),
        const SizedBox(width: CustomSizes.spaceBetweenItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: CustomColor.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: CustomSizes.iconMd,
              width: CustomSizes.iconMd,
              image: AssetImage(
                ImageStrings.facebookLogo,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
