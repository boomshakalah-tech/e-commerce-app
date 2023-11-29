import 'package:flutter/material.dart';

import 'package:e_commerc_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerc_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerc_app/common/styles/spacing_styles.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import '../../../../common/widgets/login_signup/custom_divider_widget.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo title and subtitle
              LoginHeader(),

              //Form
              LoginForm(),

              //Divider
              CustomDividerWidget(text: CustomTextString.orSignInWith),
              SizedBox(height: CustomSizes.spaceBetweenSections),

              //Footer
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
