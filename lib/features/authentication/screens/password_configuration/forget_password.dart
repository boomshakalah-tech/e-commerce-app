import 'package:e_commerc_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:e_commerc_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(CustomSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
            Text(
              CustomTextString.forgetPasswordTiltle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: CustomSizes.spaceBetweenItems),
            Text(
              CustomTextString.forgetPasswordSubTiltle,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: CustomSizes.spaceBetweenSections),

            //Text filed
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: CustomTextString.email,
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBetweenSections),

            //Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPassword()),
                  child: const Text(CustomTextString.submit)),
            )
          ],
        ),
      ),
    );
  }
}
