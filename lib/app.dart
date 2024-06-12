// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:retroreviveapp/features/authentication/screens/onboarding/omboarding.dart';
import 'package:retroreviveapp/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system, // same as the system

      theme: TAppTheme.LightTheme,
      darkTheme: TAppTheme.DarkTheme,
      home: OnboardingScreen(),
    );
  }
}
