// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retroreviveapp/features/authentication/screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  Rx<int> currenPageIndex = 0.obs; //observer its;s an rx type integer
  void updatePageIndicator(index) => currenPageIndex.value = index;

  void dotNavigationClick(index) {
    currenPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currenPageIndex.value == 2) {
      Get.to(LoginScreen());
    } else {
      int page = currenPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currenPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
