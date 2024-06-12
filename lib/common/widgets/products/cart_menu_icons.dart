// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:retroreviveapp/utils/constants/colors.dart';

class TcartCounterIcon extends StatelessWidget {
  const TcartCounterIcon({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });
  final Color iconColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.message,
            color: TColors.white,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.red,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text("10",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.white, fontSizeFactor: 0.8)),
            ),
          ),
        )
      ],
    );
  }
}
