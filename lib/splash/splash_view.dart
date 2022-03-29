import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
import 'splash_controller.dart' as sc;

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sc.SplashController c = Get.find();
    return ListView(
      children: [
        GetBuilder<sc.SplashController>(builder: ((c) => Text("${c.count}"))),
        Text("splash_view"),
        Text("${c.count}"),
        ElevatedButton(
          onPressed: (() => c.inc()),
          child: null,
        ),
        ElevatedButton(
          onPressed: (() {
            sharedPref!.setString("id", "1");
            print("${sharedPref!.getString("id")}");
          }),
          child: null,
        )
      ],
    );
  }
}
