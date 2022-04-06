import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SettingServices extends GetxService {
  int count = 0;
  final String keyCount = 'count';
  //---------------------------------------
  String themName = 'light'; //light//dark
  final String keyThemName = 'themName';
  //---------------------------------------
  String local = 'en';
  final String keyLocal = 'local';
  //---------------------------------------

  Future<SettingServices> init() async {
    await GetStorage.init();
    count = GetStorage().read<int>(keyCount) ?? 0;
    local = GetStorage().read<String>(keyLocal) ?? 'en';
    themName = GetStorage().read<String>(keyThemName) ?? 'light';
    await Firebase.initializeApp();
    return this;
  }

  //----------------------------------------------------------------------------
  void localChange(String _local) {
    Get.updateLocale(Locale(_local));
    GetStorage().write(keyLocal, _local);
  }

  //----------------------------------------------------------------------------
  ThemeData themeGet() {
    switch (themName) {
      case 'light':
        return ThemeData.light();
      case 'dark':
        return ThemeData.dark();
      default:
        return ThemeData.light();
    }
  }

  void themeChange() {
    if (Get.isDarkMode) {
      print('dark -> lith');
      themName = 'light';
      Get.changeTheme(ThemeData.light());
    } else {
      print('lith -> dark');
      themName = 'dark';
      Get.changeTheme(ThemeData.dark());
    }
    GetStorage().write(keyThemName, themName);
  }

  //----------------------------------------------------------------------------
  void countInc() {
    count++;
    GetStorage().write(keyCount, count);
  }
}
