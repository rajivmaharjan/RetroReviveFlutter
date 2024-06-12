// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:retroreviveapp/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:retroreviveapp/utils/constants/sizes.dart';
import 'package:retroreviveapp/utils/constants/textstrings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Texts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: TSizes.spaceBtwItems),
            Text(Texts.forgetPasswordsubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            SizedBox(height: TSizes.spaceBtwSections * 2),
            TextFormField(
              decoration: InputDecoration(
                  labelText: Texts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(ResetPassword()),
                child: Text(Texts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
