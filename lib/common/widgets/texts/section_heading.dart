import 'package:flutter/material.dart';

class Sectionheading extends StatelessWidget {
  const Sectionheading({
    super.key,
    this.textcolor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'View All',
    this.onPressed,
  });
  final Color? textcolor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Top Sellers',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textcolor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
