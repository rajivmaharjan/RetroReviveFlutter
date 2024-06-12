// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:retroreviveapp/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:retroreviveapp/utils/constants/sizes.dart';
import 'package:retroreviveapp/utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: Text("Skip"),
      ),
    );
  }
}
