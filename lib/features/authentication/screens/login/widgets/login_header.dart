import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          height: 150,
          image: AssetImage(CustomImagesStrings.appLogo),
        ),
        Text(
          '${CustomTextString.loginTitle} to ${CustomTextString.appName}',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: CustomSizes.sm),
        Text(
          CustomTextString.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
