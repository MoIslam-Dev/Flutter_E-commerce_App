

import 'package:e_commerceapp/common/widgets/image_text/vertical_image_text.dart';
import 'package:e_commerceapp/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){
          return const VerticalImageText(image: EImages.shoeIcon, title: 'what a car');
        }
      ),
    );
  }
}
