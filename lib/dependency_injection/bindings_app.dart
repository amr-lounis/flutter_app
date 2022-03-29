import 'package:get/get.dart';
import '../splash/splash_controller.dart' as sc;
import '../user/user_controller.dart' as uc;

class BindingsApp extends Bindings {
  @override
  void dependencies() {
    Get.put(sc.SplashController(), permanent: true);
    Get.put(uc.UserController(), permanent: true);
    //Get.lazyPut(() => SplashController(), fenix: true); best in use in initialBinding
  }
}
