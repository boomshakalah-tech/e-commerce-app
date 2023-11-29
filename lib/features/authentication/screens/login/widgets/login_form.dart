import 'package:e_commerc_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_commerc_app/features/authentication/screens/signup/signup.dart';
import 'package:e_commerc_app/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: CustomSizes.spaceBetweenSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: CustomTextString.email,
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwInputFields),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: CustomTextString.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: CustomSizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(CustomTextString.rememberMe),
                  ],
                ),

                //Forget Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(CustomTextString.forgetPassword),
                ),
              ],
            ),

            //SignIn Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const NavigationMenu()),
                  child: const Text(CustomTextString.signIn)),
            ),
            const SizedBox(height: CustomSizes.spaceBetweenItems),
            //Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignUpScreen()),
                  child: const Text(CustomTextString.createAccount)),
            ),
          ],
        ),
      ),
    );
  }
}
