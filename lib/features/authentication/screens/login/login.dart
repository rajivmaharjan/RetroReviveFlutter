// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:retroreviveapp/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:retroreviveapp/features/authentication/screens/signup/signup.dart';
import 'package:retroreviveapp/navigation_menu.dart';
import 'package:retroreviveapp/utils/constants/colors.dart';
import 'package:retroreviveapp/utils/constants/images.dart';
import 'package:retroreviveapp/utils/constants/sizes.dart';
import 'package:retroreviveapp/utils/constants/textstrings.dart';
import 'package:retroreviveapp/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: TSizes.appbarHeight,
            left: TSizes.defaultSpace,
            bottom: TSizes.defaultSpace,
            right: TSizes.dividerHeight,
          ),
          child: Column(
            //logo
            //title
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImages.lightApplogo : TImages.darkApplogo),
                  ),
                  Text(
                    Texts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: TSizes.sm),
                ],
              ),
              Form(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.message_add),
                            labelText: Texts.email),
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: Texts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwInputFields / 2,
                      ),

                      //remeber me and forgert passowrd

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(Texts.rememberMe),
                            ],
                          ),
                          TextButton(
                            onPressed: () => Get.to(() => ForgetPassword()),
                            child: Text(Texts.forgetPassowrd),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => Get.to(() => NavigationMenu()),
                          child: Text(Texts.signIn),
                        ),
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => SignupScreen()),
                          child: Text(Texts.createAccount),
                        ),
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwSections,
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? TColors.darkGrey : TColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text("Or Sign in With"),
                  Flexible(
                    child: Divider(
                      color: dark ? TColors.darkGrey : TColors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image(
                          width: TSizes.iconMd,
                          height: TSizes.iconMd,
                          image: AssetImage(TImages.google),
                        )),
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image(
                          width: TSizes.iconMd,
                          height: TSizes.iconMd,
                          image: AssetImage(TImages.facebook),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//header form formdivider socialbutton - last both in comon sidests.login_singup folder