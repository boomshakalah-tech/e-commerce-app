import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:e_commerc_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerc_app/features/authentication/screens/onboarding/widgets/onboarding_skip_button.dart';
import 'package:e_commerc_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerc_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerc_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerc_app/utils/constants/image_strings.dart';
import 'package:e_commerc_app/utils/constants/texts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          //Horizontal Scrollabe Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: ImageStrings.onBoardingImage1,
                title: CustomTextString.onBoardingTitle1,
                subTitle: CustomTextString.onBoardingSubtitle1,
              ),
              OnBoardingPage(
                image: ImageStrings.onBoardingImage2,
                title: CustomTextString.onBoardingTitle2,
                subTitle: CustomTextString.onBoardingSubtitle2,
              ),
              OnBoardingPage(
                image: ImageStrings.onBoardingImage3,
                title: CustomTextString.onBoardingTitle3,
                subTitle: CustomTextString.onBoardingSubtitle3,
              ),
            ],
          ),

          //Skip Button
          const OnBoardingSkip(),

          //Dot navigation smooth page indicator
          const OnBoardingDotNavigation(),

          //Circular Button
          const OnBoardNextButton(),
        ],
      ),
    );
  }
}
