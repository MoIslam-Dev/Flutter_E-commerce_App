import 'package:e_commerceapp/features/authentication/screens/onboarding/on_boarding.dart';
import 'package:e_commerceapp/utils/thems/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: EAppTheme.lighttheme,
      darkTheme: EAppTheme.darkTheme,
      home: const  OnboardingScreen(),
    );
  }
}