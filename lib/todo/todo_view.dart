import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'todo_controller.dart';

class TodoView extends GetView<TodoController> {
  const TodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo view ")),
      body: ListView(
        children: [],
      ),
    );
  }
}
