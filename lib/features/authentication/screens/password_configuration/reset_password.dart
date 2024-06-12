// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:retroreviveapp/utils/constants/images.dart';
import 'package:retroreviveapp/utils/constants/sizes.dart';
import 'package:retroreviveapp/utils/constants/textstrings.dart';
import 'package:retroreviveapp/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(TImages.checkyourEmail),
                width: THelperFunctions.getScreenWidth() * 0.6,
              ),

              SizedBox(width: TSizes.spaceBtwSections),
              //title
              Text(
                Texts.changeyourPassword,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              SizedBox(height: TSizes.spaceBtwItems),
              Text(
                Texts.changeYourPasswordsub,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spaceBtwSections),
              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text("Done")),
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              //buttons
              SizedBox(
                width: double.infinity,
                child:
                    TextButton(onPressed: () {}, child: Text("Resend Email")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
