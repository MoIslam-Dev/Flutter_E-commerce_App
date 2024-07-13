
import 'package:e_commerceapp/features/authentication/controllers/on_boarding/on_boarding_controller.dart';
import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/device/device_utility.dart';
import 'package:e_commerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotsNavigation extends StatelessWidget {
  const OnBoardingDotsNavigation({
    super.key,

  });
 

  

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
     final dark = EHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: EDeviceUtils.getBottomNavigationBarHeight(),
      left: ESizes.defaultSpace,
      child: SmoothPageIndicator(
        
          controller: controller.pageController,
          onDotClicked: controller.DotNavigationClick,
          count: 3,
          effect:  ExpandingDotsEffect(
            dotHeight: 16,
            dotWidth: 16,
            activeDotColor: dark ? EColors.white : EColors.black,

          ),
        ),
    );
  }
}
