// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:retroreviveapp/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:retroreviveapp/common/widgets/images/t_rounded_image.dart';
import 'package:retroreviveapp/features/shop/controllers/home_controllers.dart';
import 'package:retroreviveapp/utils/constants/colors.dart';
import 'package:retroreviveapp/utils/constants/images.dart';
import 'package:retroreviveapp/utils/constants/sizes.dart';

class TBannerSlider extends StatelessWidget {
  const TBannerSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          items: [
            TRoundedImage(imageUrl: TImages.banner_1),
            TRoundedImage(imageUrl: TImages.banner_2),
            TRoundedImage(imageUrl: TImages.banner_3),
          ],
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                  TCircularContainer(
                    width: 20,
                    height: 6,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor: controller.carosalCurrentIndex.value == i
                        ? TColors.secondary
                        : TColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
