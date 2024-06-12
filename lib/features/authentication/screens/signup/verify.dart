// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:retroreviveapp/common/widgets/sucess_screen/sucess_screen.dart';
import 'package:retroreviveapp/features/authentication/screens/login/login.dart';
import 'package:retroreviveapp/utils/constants/images.dart';
import 'package:retroreviveapp/utils/constants/sizes.dart';
import 'package:retroreviveapp/utils/constants/textstrings.dart';
import 'package:retroreviveapp/utils/helpers/helper_functions.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //image

              Image(
                image: AssetImage(TImages.checkyourEmail),
                width: THelperFunctions.getScreenWidth() * 0.6,
              ),

              SizedBox(width: TSizes.spaceBtwSections),
              //title
              Text(
                Texts.checkEmailHeading,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              SizedBox(height: TSizes.spaceBtwItems),
              Text(
                Texts.userEmail,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                Texts.checkEmailSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SucessScreen(
                          image: TImages.verifiedEmail,
                          title: Texts.yourAccountCreated,
                          subTitle: Texts.yourAccountCreatedSub,
                          onPressed: () => Get.to(() => LoginScreen()),
                        )),
                    child: Text("Continue")),
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child:
                    TextButton(onPressed: () {}, child: Text("Resend Email")),
              ),
              SizedBox(height: TSizes.spaceBtwItems)
            ],
          ),
        ),
      ),
    );
  }
}
