import 'package:get/get.dart';
import 'local_controller.dart';

class LocalBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(LocalController(), permanent: true);
  }
}
