// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:retroreviveapp/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:retroreviveapp/utils/constants/sizes.dart';
import 'package:retroreviveapp/utils/device/device_utility.dart';

class OnboardingnextButton extends StatelessWidget {
  const OnboardingnextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(), backgroundColor: Colors.green),
        child: Icon(Iconsax.arrow_right_1),
      ),
    );
  }
}
