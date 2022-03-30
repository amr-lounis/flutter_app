import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'todo_controller.dart' as uc;

class TodoView extends StatelessWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uc.UserController c = Get.find();
    return ListView(
      children: [Text("Todo view ")],
    );
  }
}
