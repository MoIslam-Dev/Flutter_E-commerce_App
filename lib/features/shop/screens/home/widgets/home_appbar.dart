
import 'package:e_commerceapp/common/widgets/appbar/appbar.dart';
import 'package:e_commerceapp/common/widgets/products/product_carts/cart_counter_icon.dart';
import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/text_string.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ETexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: EColors.grey),
          ),
          Text(
            ETexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: EColors.white),
          ),
        ],
      ),
      actions: [
        ECartCounterIcon(onPressed: (){},)
      ],
    );
  }
}

