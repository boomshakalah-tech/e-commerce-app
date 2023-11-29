import 'package:e_commerc_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utitlity.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = CustomHelperFuntions.isDarkMode(context);

    return Positioned(
      bottom: CustomDeviceUtility.getBottomNavigationBarHeight(),
      left: CustomSizes.defaultSpace,
      child: Column(
        children: [
          SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: dark ? CustomColor.light : CustomColor.dark,
              dotHeight: 6,
            ),
          ),
        ],
      ),
    );
  }
}
