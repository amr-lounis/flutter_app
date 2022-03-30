import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/settings_services.dart';

class LocalController extends GetxController {
  late String local = "";
  final SettingServices _ss = Get.find();
  void localSet(String _local) {
    Get.updateLocale(Locale(_local));
    _ss.localStor(_local);
  }
}
