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
        appBar: AppBar(title: Text("User view ")),
        body: ListView(children: [
          GetBuilder<UserController>(builder: (c) => Text("${c.count}")),
          ElevatedButton(
            onPressed: () => controller.countInc(),
            child: Icon(Icons.add),
          ),
        ]));
  }
}
