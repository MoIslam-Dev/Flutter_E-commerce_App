
import 'package:e_commerceapp/features/authentication/controllers/on_boarding/on_boarding_controller.dart';
import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/device/device_utility.dart';
import 'package:e_commerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   final dark = EHelperFunctions.isDarkMode(context);
    return Positioned(
     right: ESizes.defaultSpace,
     bottom: EDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(onPressed: (){
        OnBoardingController.instance.nextPage();
      },
      style: ElevatedButton.styleFrom(
       shape: const CircleBorder(),
       backgroundColor: dark? EColors.white: EColors.dark,

      )
      , child: Icon(
        color: dark? EColors.dark: EColors.white,
      Iconsax.arrow_right_3,
      )),
    );
  }
}



