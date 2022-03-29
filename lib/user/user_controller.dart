import 'package:get/get.dart';

class UserController extends GetxController {
  int count = 0;

  void inc() {
    count++;
    update();
  }
}
