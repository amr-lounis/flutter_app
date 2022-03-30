import 'package:get/get.dart';
import 'todo_controller.dart';

class TodoBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(UserController(), permanent: true);
    //Get.lazyPut(() => SplashController(), fenix: true); best in use in initialBinding
  }
}
