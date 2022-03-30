import 'package:flutter/material.dart';
import 'package:flutter_app/utils/settings_services.dart';
import 'package:get/get.dart';
//
import 'user_controller.dart';

//
class UserView extends GetView<SettingServices> {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final UserController c = Get.find();
    // final SettingServices s = Get.find();
    return ListView(children: [
      Text("User view "),
      Obx(() => Text("${controller.count}")),
      ElevatedButton(
          onPressed: () {
            controller.inc();
          },
          child: null)
    ]);
  }
}
