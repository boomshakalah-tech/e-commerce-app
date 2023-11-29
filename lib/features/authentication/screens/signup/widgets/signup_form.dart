import 'package:e_commerc_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerc_app/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.textTheme,
    required this.dark,
  });

  final TextTheme textTheme;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //First and Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: CustomTextString.firstName,
                  ),
                ),
              ),
              const SizedBox(width: CustomSizes.inputFieldRadius),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: CustomTextString.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: CustomSizes.inputFieldRadius),

          //Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: CustomTextString.username,
            ),
          ),
          const SizedBox(height: CustomSizes.inputFieldRadius),

          //Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: CustomTextString.email,
            ),
          ),
          const SizedBox(height: CustomSizes.inputFieldRadius),

          //Phone number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: CustomTextString.phoneNo,
            ),
          ),
          const SizedBox(height: CustomSizes.inputFieldRadius),

          //Password
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: CustomTextString.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: CustomSizes.spaceBetweenItems),

          //Terms and Condition Check Box
          TermsAndConditionCheckbox(textTheme: textTheme, dark: dark),
          const SizedBox(height: CustomSizes.spaceBetweenItems),

          //Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(CustomTextString.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
