import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import 'xxx_controller.dart';

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
        )
        //---------------------------------------------------------------------
      ]),
    );
  }
}
