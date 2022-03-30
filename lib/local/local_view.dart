import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import 'local_controller.dart';

//
class LocalView extends GetView<LocalController> {
  const LocalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Text("Local view"),
      Text("1".tr),
      Text("2".tr),
      Text("3".tr),
      ElevatedButton(
          onPressed: () => controller.localSet("en"), child: Text("en")),
      ElevatedButton(
          onPressed: () => controller.localSet("ar"), child: Text("ar")),
    ]);
  }
}
