import 'package:get/get.dart';
import '../utils/settings_services.dart';

class LocalController extends GetxController {
  late String local = "";
  final SettingServices _ss = Get.find();
  void localSet(String _local) {
    _ss.localChange(_local);
  }
}
