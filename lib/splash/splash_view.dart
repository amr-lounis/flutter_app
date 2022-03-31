import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import 'splash_controller.dart';

class SplashView extends GetView<SplashView> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SplashController c = Get.find();
    return Scaffold(
        appBar: AppBar(title: Text("splash_view")),
        body: ListView(
          children: [
            GetBuilder<SplashController>(builder: ((c) => Text("${c.count}"))),
            ElevatedButton(
              onPressed: (() => c.inc()),
              child: null,
            ),
            ElevatedButton(
              onPressed: (() {}),
              child: null,
            )
          ],
        ));
  }
}
