// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:retroreviveapp/features/authentication/screens/home/home.dart';
import 'package:retroreviveapp/utils/constants/colors.dart';
import 'package:retroreviveapp/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor:
              darkMode ? TColors.black : Colors.white.withOpacity(0.1),
          indicatorColor:
              darkMode ? TColors.white : TColors.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(
                icon: Icon(Iconsax.message), label: 'Message'),
            NavigationDestination(
                icon: Icon(Iconsax.shopping_cart), label: 'Cart'),
            NavigationDestination(
                icon: Icon(Iconsax.personalcard), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Homescreen(),
    Container(color: Colors.blue),
    Container(color: Colors.orange),
    Container(color: Colors.red),
    Container(color: Colors.purple)
  ];
}
