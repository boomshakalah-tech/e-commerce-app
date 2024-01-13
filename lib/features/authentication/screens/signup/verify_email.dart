import 'package:e_commerc_app/common/widgets/succes_screen/success_screen.dart';
import 'package:e_commerc_app/features/authentication/screens/login/login.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/texts.dart';
import '../../../../utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(
                width: CustomHelperFuntions.screenWidth() * 0.6,
                image: const AssetImage(ImageStrings.signUpVerify),
              ),
              const SizedBox(height: CustomSizes.spaceBetweenSections),

              //Title annd Subtitle
              Text(
                CustomTextString.confirmEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CustomSizes.spaceBetweenItems),
              Text(
                'talibyadeamore@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CustomSizes.spaceBetweenItems),
              Text(
                CustomTextString.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CustomSizes.spaceBetweenSections),

              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                        image: ImageStrings.singUpSuccess,
                        title: CustomTextString.yourAccountCreatedTitle,
                        subtitle: CustomTextString.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => const LoginScreen()),
                      )),
                  child: const Text(CustomTextString.cContinue),
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBetweenItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(CustomTextString.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
