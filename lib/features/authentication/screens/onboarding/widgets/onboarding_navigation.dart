import 'package:flutter/material.dart';
import 'package:retroreviveapp/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:retroreviveapp/utils/constants/colors.dart';
import 'package:retroreviveapp/utils/constants/sizes.dart';
import 'package:retroreviveapp/utils/device/device_utility.dart';
import 'package:retroreviveapp/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingNavigation extends StatelessWidget {
  const OnboardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: JumpingDotEffect(
          activeDotColor: dark ? TColors.light : TColors.dark,
        ),
      ),
    );
  }
}
