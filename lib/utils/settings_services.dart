import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingServices extends GetxService {
  late SharedPreferences shared_preferences;
  RxInt count = 0.obs;

  Future<SettingServices> init() async {
    shared_preferences = await SharedPreferences.getInstance();
    count.value = shared_preferences.getInt("count") ?? 0;
    return this;
  }

  void inc() {
    count.value++;
    print("${count.value}");
    shared_preferences.setInt("count", count.value);
  }
}
