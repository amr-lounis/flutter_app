import 'package:get/get.dart';

class XXXController extends GetxController {
  int count = 0;

  void countInc() {
    print(count);
    count++;
    update();
  }
}
