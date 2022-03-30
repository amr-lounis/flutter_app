import 'package:get/get.dart';
import 'splash_controller.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController(), permanent: true);
    //Get.lazyPut(() => SplashController(), fenix: true); best in use in initialBinding
  }
}
