

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();
  //variables 
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

void UpdatePageIndicator(int index){
  currentPageIndex.value = index;

}
void DotNavigationClick( index ){
   currentPageIndex.value = index;
   pageController.jumpTo(index);
}

  void nextPage() {
    if (currentPageIndex.value == 2) {
   //   Get.to(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
      );
    }
  }
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.animateToPage(
      2,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
    );
  }
}