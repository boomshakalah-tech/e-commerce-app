import 'package:flutter/material.dart';

import 'package:e_commerc_app/utils/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'features/authentication/screens/onboarding/onboarding.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: CAppTheme.lighTheme,
      darkTheme: CAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
