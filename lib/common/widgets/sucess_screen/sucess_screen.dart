// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retroreviveapp/common/styles/spacing_styles.dart';

import 'package:retroreviveapp/utils/constants/sizes.dart';
import 'package:retroreviveapp/utils/constants/textstrings.dart';
import 'package:retroreviveapp/utils/helpers/helper_functions.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingwithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: THelperFunctions.getScreenWidth() * 0.6,
              ),

              SizedBox(width: TSizes.spaceBtwSections),
              //title
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              SizedBox(height: TSizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spaceBtwSections),
              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPressed, child: Text(Texts.continUe)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
