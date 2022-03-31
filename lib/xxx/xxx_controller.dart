import 'package:flutter_app/utils/settings_services.dart';
import 'package:get/get.dart';

class XXXController extends GetxController {
  int count = 0;
  final SettingServices ss = Get.find();

  void themeChange() {
    ss.themeChange();
  }

  void countInc() {
    ss.countInc();
    count = ss.count;
    update();
  }

  @override
  void onInit() {
    count = ss.count;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  InternalFinalCallback<void> get onStart => super.onStart;

  @override
  void onClose() {
    super.onClose();
  }
}
