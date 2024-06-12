import 'package:flutter/material.dart';
import 'package:retroreviveapp/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:retroreviveapp/utils/constants/images.dart';

class ThomeCategories extends StatelessWidget {
  const ThomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TverticalImageText(
              image: TImages.seller_1,
              title: 'Thrift By Nikita',
              onTap: () {},
            );
          }),
    );
  }
}
