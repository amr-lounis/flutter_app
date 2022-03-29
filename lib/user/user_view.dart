import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './user_controller.dart' as uc;

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uc.UserController c = Get.find();
    return ListView(
      children: [
        Text("user_view"),
        GetBuilder<uc.UserController>(builder: ((c) => Text("${c.count}"))),
        ElevatedButton(
          onPressed: (() => c.inc()),
          child: null,
        ),
      ],
    );
  }
}
