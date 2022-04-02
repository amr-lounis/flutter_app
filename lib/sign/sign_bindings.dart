import 'package:get/get.dart';
import 'sign_controller.dart';

class SignBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SignController(), permanent: true);
  }
}
