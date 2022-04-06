import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import '../widgets/sign_In_widget.dart';
import 'user_controller.dart';

class SignView extends GetView<UserController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign view"),
        bottomOpacity: 10,
      ),
      body: ListView(children: [
        SignInWidget(
          onSignIn: (email, password) {
            print("email");
            print(email);
            print('password');
            print(password);
          },
        ),
        ElevatedButton(
          onPressed: () {
            controller.getUser();
          },
          child: Text("getUser"),
        ),
        ElevatedButton(
          onPressed: () {
            controller.signInAnonymously();
          },
          child: Text("signInAnonymously"),
        ),
        ElevatedButton(
          onPressed: () {
            controller.signInEmail();
          },
          child: Text("signInEmail"),
        ),
        ElevatedButton(
          onPressed: () {
            controller.signUpEmail();
          },
          child: Text("signUpEmail"),
        ),
        ElevatedButton(
          onPressed: () {
            controller.googleSignInMethod();
          },
          child: Text("googleSignIn"),
        ),
      ]),
    );
  }
}
