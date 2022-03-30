import 'package:get/get.dart';
import 'xxx_controller.dart';

class XXXBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(XXXController(), permanent: true);
    //Get.lazyPut(() => SplashController(), fenix: true); best in use in initialBinding
  }
}
