import 'package:get/get.dart';

class LocalController extends GetxController {
  int count = 0;

  void inc() {
    count++;
    update();
  }
}
