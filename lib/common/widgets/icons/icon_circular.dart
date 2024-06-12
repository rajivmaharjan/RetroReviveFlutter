import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:retroreviveapp/utils/constants/colors.dart';
import 'package:retroreviveapp/utils/constants/sizes.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    required this.dark,
    this.width,
    this.height,
    this.size = 24,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final bool dark;
  final double? width, height, size;
  final IconData? icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? TColors.black.withOpacity(0.9)
                : TColors.white.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
