import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  Rx<int> CarauselCurrentIndex = 0.obs;

  void UpdatePageIndicator(int index) {
    CarauselCurrentIndex.value = index;
  }
}
