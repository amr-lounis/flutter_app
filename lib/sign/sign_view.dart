import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import 'sign_controller.dart';
import 'widget/sign_In_widget.dart';

class SignView extends GetView<SignController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign view"),
        bottomOpacity: 10,
      ),
      body: ListView(children: [
        Text("..............."),
        SignInWidget(),
      ]),
    );
  }
}
