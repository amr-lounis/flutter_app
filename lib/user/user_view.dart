import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import 'user_controller.dart';

class UserView extends GetView<UserController> {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cole = FirebaseFirestore.instance.collection('users');

    return Scaffold(
        appBar: AppBar(title: Text("User view")),
        body: ListView(children: [
          GetBuilder<UserController>(builder: (c) => Text("${c.count}")),
          ElevatedButton(
            onPressed: () {},
            child: Text('okjjkljlk'),
          ),
          ElevatedButton(
            onPressed: () {
              controller.ListUsers();
            },
            child: Icon(Icons.read_more),
          ),
          ElevatedButton(
            onPressed: () {
              controller.addUsers();
            },
            child: Icon(Icons.add),
          ),
          StreamBuilder(
            stream: cole.snapshots(),
            builder: (BuildContext c, AsyncSnapshot<QuerySnapshot> snp) {
              if (snp.hasError) {
                return Text('Something went wrong');
              }

              if (snp.connectionState == ConnectionState.waiting) {
                return Text("Loading");
              }
              if (snp.hasData) {
                var docs = snp.data!.docs;
                int count = docs.length;
                print('**********************${count}');
                return ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: count,
                  itemBuilder: (context, i) {
                    var m = (docs[i].data()! as Map<String, dynamic>);
                    return Text('${m['name']}');
                  },
                );
              }
              return Text('other problem ');
            },
          )
        ]));
  }
}
