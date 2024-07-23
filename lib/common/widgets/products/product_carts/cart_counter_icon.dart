
import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ECartCounterIcon extends StatelessWidget {
  const ECartCounterIcon({
    super.key,  this.iconcolor, required this.onPressed,
  });
  final Color ?iconcolor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final  dark = EHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Iconsax.shopping_bag),
          color: iconcolor,
        ),
        Positioned(
          right: 0,
          child: Container(
            alignment: Alignment.center,
            height: 18,
            width: 18,
            decoration: BoxDecoration(
                color:dark? EColors.white:EColors.dark,
                borderRadius: BorderRadius.circular(100)),
            child: Text(
              '2',
              style: Theme.of(context).textTheme.labelLarge!.apply(color: dark? EColors.dark:EColors.white,fontSizeFactor: 0.8),
            
            ),
          ),
        )
      ],
    );
  }
}
