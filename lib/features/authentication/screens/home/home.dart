// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:retroreviveapp/common/widgets/custom_shapes/containers/circular_container.dart';

import 'package:retroreviveapp/common/widgets/custom_shapes/containers/primay_header_container.dart';
import 'package:retroreviveapp/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:retroreviveapp/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:retroreviveapp/common/widgets/images/t_rounded_image.dart';
import 'package:retroreviveapp/common/widgets/products/products_carts/product_cart_vertical.dart';
import 'package:retroreviveapp/common/widgets/texts/section_heading.dart';
import 'package:retroreviveapp/features/authentication/screens/home/widgets/banner_slide.dart';

import 'package:retroreviveapp/features/authentication/screens/home/widgets/home_appbar.dart';
import 'package:retroreviveapp/features/authentication/screens/home/widgets/home_ctegories.dart';
import 'package:retroreviveapp/features/shop/controllers/home_controllers.dart';
import 'package:retroreviveapp/utils/constants/colors.dart';
import 'package:retroreviveapp/utils/constants/images.dart';
import 'package:retroreviveapp/utils/constants/sizes.dart';
import 'package:retroreviveapp/utils/device/device_utility.dart';
import 'package:retroreviveapp/utils/helpers/helper_functions.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              // green color
              child: Column(
                children: [
                  ThomeAppbar(),
                  SizedBox(
                    height: TSizes.spaceBtwInputFields,
                  ),
                  // search bar
                  TsearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  //categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        Sectionheading(
                          title: 'Top Sellers',
                          showActionButton: false,
                          textcolor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),
                        ThomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TBannerSlider(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  GridView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: TSizes.gridViewSpacing,
                        crossAxisSpacing: TSizes.gridViewSpacing,
                        mainAxisExtent: 288,
                      ),
                      itemBuilder: (_, index) => TProductCardVertical()),
                  TProductCardVertical(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
