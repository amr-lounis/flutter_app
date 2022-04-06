import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as path;
//
import 'xxx_controller.dart';

import 'package:image_picker/image_picker.dart';

var imagePicker = ImagePicker();

void uploadImage() async {
  try {
    var v = await imagePicker.pickImage(source: ImageSource.camera);
    if (v != null) {
      var imageName = path.basename(v.path);
      var imagePath = v.path;
      var file = File(imagePath);

      var storageRef = FirebaseStorage.instance.ref('${1}.jpg');
      await storageRef.putFile(file);
      var url = await storageRef.getDownloadURL();
      print(url);
    } else {
      print('npn path');
    }
  } catch (e) {
    print(e);
  }
}

void getImage() async {
  try {
    var list =
        await FirebaseStorage.instance.ref().list(ListOptions(maxResults: 2));

    list.items.forEach((element) {
      print('************ ${element.name}');
    });
    list.prefixes.forEach((element) {
      print('************ ${element.name}');
    });
  } catch (e) {
    print(e);
  }
}

class XXXView extends GetView<XXXController> {
  @override
  Widget build(BuildContext context) {
    //     XXXController controller = Get.find();
    // print(Get.width);
    // print(Get.height);
    // print(GetPlatform.isWeb ? 'web' : 'other');
    // print(GetPlatform.isWindows ? 'Windows' : 'not Windows');
    // print(GetPlatform.isAndroid ? 'Android' : 'not Android');
    // print(context.isLandscape ? 'Landscape' : 'not Landscape');
    // print(context.isPortrait ? 'Portrait' : 'not Portrait');
    // print(Get.routing.previous);
    // print(Get.routing.current);

    return Scaffold(
      appBar: AppBar(
        title: Text("XXX view"),
        bottomOpacity: 10,
      ),
      body: ListView(children: [
        //--------------------------------------------------------------------- count
        GetBuilder<XXXController>(builder: (c) => Text("${c.count}")),
        //--------------------------------------------------------------------- count++
        ElevatedButton(
          onPressed: () => controller.countInc(),
          child: Icon(Icons.add),
        ),
        //--------------------------------------------------------------------- snackbar
        ElevatedButton(
          onPressed: () {
            Get.snackbar("snackbar", "snackbar message",
                snackPosition: SnackPosition.BOTTOM);
          },
          child: Text("snackbar"),
        ),
        //--------------------------------------------------------------------- bottomSheet
        ElevatedButton(
          onPressed: () {
            Get.bottomSheet(
                Container(
                  child: Text("data"),
                  height: 50,
                  color: Colors.red,
                ),
                //isDismissible: false,
                exitBottomSheetDuration: Duration(seconds: 1));
          },
          child: Text("bottomSheet"),
        ),
        //--------------------------------------------------------------------- defaultDialog
        ElevatedButton(
          onPressed: () {
            Get.defaultDialog(
                title: "titel",
                middleText: "hellopppkjlk j lkj lk ",
                textCancel: "canel",
                textConfirm: "confirm",
                onConfirm: () {
                  print("onConfirm");
                  if ((Get.isDialogOpen ?? false) == true) {
                    Get.back();
                  }
                  ;
                });
          },
          child: Text("defaultDialog"),
        ),
        //--------------------------------------------------------------------- Theme change
        ElevatedButton(
          onPressed: () {
            controller.themeChange();
          },
          child: Text("Theme change"),
        ),
        //--------------------------------------------------------------------- File Iamage
        ElevatedButton(
          onPressed: () {
            //uploadImage();
            getImage();
          },
          child: Text("File Iamage"),
        )
        //---------------------------------------------------------------------
      ]),
    );
  }
}
