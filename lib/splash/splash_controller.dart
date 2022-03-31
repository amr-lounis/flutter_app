import 'package:get/get.dart';

class SplashController extends GetxController {
  int count = 0;

  void inc() {
    count++;
    update();
  }
}
