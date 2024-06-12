import 'package:flutter/material.dart';
import 'package:retroreviveapp/common/widgets/appbar/appbar.dart';
import 'package:retroreviveapp/common/widgets/products/cart_menu_icons.dart';
import 'package:retroreviveapp/utils/constants/colors.dart';
import 'package:retroreviveapp/utils/constants/textstrings.dart';

class ThomeAppbar extends StatelessWidget {
  const ThomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Texts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Text(
            Texts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.white),
          ),
        ],
      ),
      actions: [TcartCounterIcon(onPressed: () {}, iconColor: TColors.white)],
    );
  }
}
