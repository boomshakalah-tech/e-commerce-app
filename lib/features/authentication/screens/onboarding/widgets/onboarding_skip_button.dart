import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:e_commerc_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utitlity.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardNextButton extends StatelessWidget {
  const OnBoardNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFuntions.isDarkMode(context);

    return Positioned(
      right: CustomSizes.defaultSpace,
      bottom: CustomDeviceUtility.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: OnBoardingController.instance.nextPage,
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? CustomColor.primary : Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
