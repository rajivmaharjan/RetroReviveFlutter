// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:retroreviveapp/common/styles/shadows.dart';
import 'package:retroreviveapp/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:retroreviveapp/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:retroreviveapp/common/widgets/icons/icon_circular.dart';
import 'package:retroreviveapp/common/widgets/images/t_rounded_image.dart';
import 'package:retroreviveapp/common/widgets/texts/product_title.dart';
import 'package:retroreviveapp/utils/constants/colors.dart';
import 'package:retroreviveapp/utils/constants/images.dart';
import 'package:retroreviveapp/utils/constants/sizes.dart';
import 'package:retroreviveapp/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 200,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productimageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          // thumnail , wishlist button, discount tag
          children: [
            TRoundedContainer(
              height: 200,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  TRoundedImage(
                    imageUrl: TImages.product9,
                    applyImageRadius: true,
                  ),

                  //sale -tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.md,
                      backgroundColor: TColors.secondary,
                      padding: EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text("25 %",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.black)),
                    ),
                  ),

                  Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      dark: dark,
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: 'Blue Nike Boots',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        "Condition",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      SizedBox(width: TSizes.xs),
                      Icon(
                        Iconsax.star,
                        color: TColors.primary,
                        size: TSizes.iconXs,
                      ),
                      Icon(
                        Iconsax.star,
                        color: TColors.primary,
                        size: TSizes.iconXs,
                      ),
                      Icon(
                        Iconsax.star,
                        color: TColors.primary,
                        size: TSizes.iconXs,
                      ),
                    ],
                  ),
                  //Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'रु4000',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRdaiusMg),
                            bottomRight:
                                Radius.circular(TSizes.productimageRadius),
                          ),
                        ),
                        child: SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
          //detail
        ),
      ),
    );
  }
}
