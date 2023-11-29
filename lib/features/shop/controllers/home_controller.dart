import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carouselCurrenIndex = 0.obs;

  void updatePageIndicator(index) {
    carouselCurrenIndex.value = index;
  }
}
