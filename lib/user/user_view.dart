import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import 'user_controller.dart';

//
class UserView extends GetView<UserController> {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("XXX view")),
        body: ListView(children: [
          Text("User view "),
          Obx(() => Text("${controller.count}")),
          ElevatedButton(
            onPressed: () => controller.countInc(),
            child: Icon(Icons.add),
          ),
        ]));
  }
}
