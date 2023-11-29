import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:e_commerc_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:e_commerc_app/utils/constants/texts.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/login_signup/custom_divider_widget.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFuntions.isDarkMode(context);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      //  AppBar(
      //   leading: IconButton(
      //     icon: const Icon(Iconsax.arrow_left),
      //     color: dark ? CColors.whiteColor : CColors.darkColor,
      //     onPressed: () => Get.to(
      //       () => const LoginScreen(),
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                CustomTextString.signUpTitle,
                style: textTheme.headlineMedium,
              ),
              const SizedBox(height: CustomSizes.spaceBetweenSections),

              //Form
              SignUpForm(textTheme: textTheme, dark: dark),
              const SizedBox(height: CustomSizes.spaceBetweenSections),

              //Divider
              CustomDividerWidget(
                  text: CustomTextString.orSignUpWith.capitalize!),
              const SizedBox(height: CustomSizes.spaceBetweenItems),

              //Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
