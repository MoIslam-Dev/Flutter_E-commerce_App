import 'package:e_commerceapp/features/authentication/controllers/on_boarding/on_boarding_controller.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:e_commerceapp/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: EDeviceUtils.getAppBarHeight(),
      right: ESizes.defaultSpace,
      child: TextButton(
      onPressed: () {OnBoardingController.instance.skipPage();},
      child: Text("skip"),
    
    ));
  }
}