import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
            onPressed: () {
              FirebaseFirestore.instance
                  .collection('collectionPath')
                  .get()
                  .then((value) {
                value.docs.forEach((element) {
                  print(element);
                });
              });
            },
            child: Icon(Icons.add),
          ),
        ]));
  }
}
