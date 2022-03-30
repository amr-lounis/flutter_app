import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import 'xxx_controller.dart';

//
class XXXView extends GetView<XXXController> {
  const XXXView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Get.width);
    print(Get.height);
    print(GetPlatform.isWeb ? 'web' : 'other');
    print(GetPlatform.isWindows ? 'Windows' : 'not Windows');
    print(GetPlatform.isAndroid ? 'Android' : 'not Android');
    print(context.isLandscape ? 'Landscape' : 'not Landscape');
    print(context.isPortrait ? 'Portrait' : 'not Portrait');
    print(Get.routing.previous);
    print(Get.routing.current);
    ;
    return ListView(children: [
      Text("XXX view "),
      GetBuilder<XXXController>(builder: (c) => Text("${c.count}")),
      ElevatedButton(
        onPressed: () => controller.countInc(),
        child: Icon(Icons.add),
      ),
      ElevatedButton(
        onPressed: () {
          Get.snackbar("snackbar", "snackbar message",
              snackPosition: SnackPosition.BOTTOM);
        },
        child: Text("snackbar"),
      ),
      ElevatedButton(
        onPressed: () {
          //Get.changeThemeMode(ThemeMode.light);
          if (Get.isDarkMode) Get.changeTheme(ThemeData.light());
          if (Get.isPlatformDarkMode) Get.changeTheme(ThemeData.light());
          print(Get.isDarkMode);
          // if (Get.isDarkMode) {
          //   print('theme is Dark');
          //   Get.changeTheme(ThemeData.light());
          // } else {
          //   print('theme is light');
          //   Get.changeTheme(ThemeData.dark());
          // }
        },
        child: Text("Theme change"),
      ),
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
    ]);
  }
}
