import 'package:e_commerc_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utitlity.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: CustomDeviceUtility.getAppBarHeight(),
      right: CustomSizes.defaultSpace,
      child: TextButton(onPressed: OnBoardingController.instance.skipPage, child: const Text('Skip')),
    );
  }
}
