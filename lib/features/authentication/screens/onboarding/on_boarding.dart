import 'package:e_commerceapp/features/authentication/controllers/on_boarding/on_boarding_controller.dart';
import 'package:e_commerceapp/features/authentication/screens/onboarding/widgets/ob_boarding_dots.dart';
import 'package:e_commerceapp/features/authentication/screens/onboarding/widgets/on_boarding_next_button.dart';
import 'package:e_commerceapp/features/authentication/screens/onboarding/widgets/on_boarding_page.dart';
import 'package:e_commerceapp/features/authentication/screens/onboarding/widgets/on_boarding_skip.dart';
import 'package:e_commerceapp/utils/constants/text_string.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.UpdatePageIndicator,
            children: const [
              OnBoardingPage(image:  EImages.onBoardingImage1,title:  ETexts.onBoardingTitle1,subtitle:  ETexts.onBoardingSubTitle1),
             OnBoardingPage(image:  EImages.onBoardingImage2,title:  ETexts.onBoardingTitle2,subtitle:  ETexts.onBoardingSubTitle2),
             OnBoardingPage(image:  EImages.onBoardingImage3,title:  ETexts.onBoardingTitle3,subtitle:  ETexts.onBoardingSubTitle3),
              ],
          ),
          const OnBoardingSkipButton(),
           const OnBoardingDotsNavigation(),
           const OnBoardingNextButton()
        ],
      ),
    );
  }
}
