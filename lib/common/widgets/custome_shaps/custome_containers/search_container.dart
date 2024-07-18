

import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/device/device_utility.dart';
import 'package:e_commerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key, required this.text,  this.icon, required this.showborder, required this.showbackground,
  });
final String text;
final IconData ?icon;
final bool showborder,showbackground;
  @override
  Widget build(BuildContext context) {
    final dark =EHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: ESizes.defaultSpace),
      child: Container(
        width: EDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(ESizes.md),
        decoration: BoxDecoration(
            color:showbackground?dark? EColors.dark:EColors.light:Colors.transparent,
            borderRadius:
                BorderRadius.circular(ESizes.cardRadiusLg),
            border:showborder? Border.all(color:dark? EColors.dark:EColors.grey):null),
        child: Row(
          children: [
             Icon(
             icon,
              color: EColors.darkGrey,
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
