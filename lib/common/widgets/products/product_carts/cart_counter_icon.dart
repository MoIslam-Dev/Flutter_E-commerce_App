
import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ECartCounterIcon extends StatelessWidget {
  const ECartCounterIcon({
    super.key, required this.iconcolor, required this.onPressed,
  });
  final Color iconcolor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
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
                color: EColors.black,
                borderRadius: BorderRadius.circular(100)),
            child: Text(
              '2',
              style: Theme.of(context).textTheme.labelLarge!.apply(color: EColors.white,fontSizeFactor: 0.8),
            
            ),
          ),
        )
      ],
    );
  }
}
