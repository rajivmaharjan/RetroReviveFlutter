// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:retroreviveapp/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:retroreviveapp/features/authentication/screens/onboarding/widgets/onboarding_navigation.dart';
import 'package:retroreviveapp/features/authentication/screens/onboarding/widgets/onboarding_nextbtn.dart';
import 'package:retroreviveapp/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:retroreviveapp/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:retroreviveapp/utils/constants/colors.dart';
import 'package:retroreviveapp/utils/constants/images.dart';
import 'package:retroreviveapp/utils/constants/sizes.dart';
import 'package:retroreviveapp/utils/constants/textstrings.dart';
import 'package:retroreviveapp/utils/device/device_utility.dart';
import 'package:retroreviveapp/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
        body: Stack(
      // horizaont scorbbal pages
      children: [
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: [
            OnboardingPage(
              image: TImages.onboardingImage1,
              title: Texts.onBoardingTitlel,
              subtitle: Texts.onBoardingSubTitle1,
            ),
            OnboardingPage(
              image: TImages.onboardingImage2,
              title: Texts.onBoardingTitle2,
              subtitle: Texts.onBoardingSubTitle2,
            ),
            OnboardingPage(
              image: TImages.onboardingImage3,
              title: Texts.onBoardingTitle3,
              subtitle: Texts.onBoardingSubTitle3,
            ),
          ],
        ),

        // skip button

        OnboardingSkip(),

        //smooth page indicator

        OnboardingNavigation(),

        // button
        OnboardingnextButton()
      ],
    ));
  }
}
