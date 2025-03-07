import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instace => Get.find();

  final carosalCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carosalCurrentIndex.value = index;
  }
}
