import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingServices extends GetxService {
  RxInt count = 0.obs;
  String local = 'en';

  Future<SettingServices> init() async {
    await GetStorage.init();
    count.value = GetStorage().read<int>("count") ?? 0;
    local = GetStorage().read<String>("local") ?? 'en';
    return this;
  }

  void localStor(String _local) {
    GetStorage().write("local", _local);
  }

  void countInc() {
    count.value++;
    GetStorage().write("count", count.value);
  }
}
