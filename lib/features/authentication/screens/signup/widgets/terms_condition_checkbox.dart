import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class TermsAndConditionCheckbox extends StatelessWidget {
  const TermsAndConditionCheckbox({
    super.key,
    required this.textTheme,
    required this.dark,
  });

  final TextTheme textTheme;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Privacy Policy
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: CustomSizes.spaceBetweenItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${CustomTextString.iAgreeTo} ',
                style: textTheme.bodySmall,
              ),
              TextSpan(
                text: '${CustomTextString.privacyPolicy} ',
                style: textTheme.bodyMedium!.apply(
                  color: dark ? CustomColor.white : CustomColor.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? CustomColor.white : CustomColor.primary,
                ),
              ),
              TextSpan(
                text: ' and ',
                style: textTheme.bodySmall,
              ),
              TextSpan(
                text: '${CustomTextString.termsOfUse} ',
                style: textTheme.bodyMedium!.apply(
                  color: dark ? CustomColor.white : CustomColor.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? CustomColor.white : CustomColor.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
