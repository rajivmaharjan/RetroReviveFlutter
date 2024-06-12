// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:retroreviveapp/features/authentication/screens/signup/verify.dart';
import 'package:retroreviveapp/utils/constants/colors.dart';
import 'package:retroreviveapp/utils/constants/images.dart';
import 'package:retroreviveapp/utils/constants/sizes.dart';
import 'package:retroreviveapp/utils/constants/textstrings.dart';
import 'package:retroreviveapp/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(
                Texts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              //form

              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                                labelText: Texts.firstName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                        SizedBox(width: TSizes.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                                labelText: Texts.lastName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: TSizes.spaceBtwInputFields),

                    //userName
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                          labelText: Texts.userName,
                          prefixIcon: Icon(Iconsax.user_edit)),
                    ),
                    SizedBox(height: TSizes.spaceBtwInputFields),

                    //email
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: Texts.email,
                          prefixIcon: Icon(Iconsax.direct)),
                    ),
                    SizedBox(height: TSizes.spaceBtwInputFields),

                    // //phonenumber
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: Texts.phoneNumber,
                          prefixIcon: Icon(Iconsax.call)),
                    ),
                    SizedBox(height: TSizes.spaceBtwInputFields),

                    //password
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: Texts.password,
                        prefixIcon: Icon(
                          Iconsax.password_check,
                        ),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),

                    SizedBox(height: TSizes.spaceBtwSections),

                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(value: true, onChanged: (value) {}),
                        ),
                        SizedBox(
                          width: TSizes.spaceBtwItems,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: '${Texts.iagreeTo}',
                                style: Theme.of(context).textTheme.bodySmall),
                            TextSpan(
                              text: '${Texts.privacyPolicy}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .apply(
                                      color: dark
                                          ? TColors.white
                                          : TColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? TColors.white
                                          : TColors.primary),
                            ),
                            TextSpan(
                                text: '${Texts.and}',
                                style: Theme.of(context).textTheme.bodySmall),
                            TextSpan(
                              text: '${Texts.termsandCondtions}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .apply(
                                      color: dark
                                          ? TColors.white
                                          : TColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? TColors.white
                                          : TColors.primary),
                            ),
                          ]),
                        ),
                      ],
                    ),
                    SizedBox(height: TSizes.spaceBtwSections),
                    //sign yo button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.to(() => VerifyEmail()),
                        child: Text(Texts.createAccount),
                      ),
                    )
                  ],
                ),
              ),
              //dividder
              SizedBox(height: TSizes.spaceBtwInputFields),

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
              SizedBox(height: TSizes.spaceBtwInputFields),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
