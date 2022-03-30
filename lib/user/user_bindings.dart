import 'package:get/get.dart';
import 'user_controller.dart' as uc;

class UserBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(uc.UserController(), permanent: true);
    //Get.lazyPut(() => SplashController(), fenix: true); best in use in initialBinding
  }
}
