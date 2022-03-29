import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_app/dependency_injection/bindings_app.dart';
import 'package:get/get.dart';
import 'middleware/auth_middleware.dart';
import 'splash/splash_view.dart';
import 'user/user_view.dart';

SharedPreferences? sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  // print("${sharedPref!.getString("id") ?? "0000"}");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(),
      initialRoute: "/splash",
      initialBinding: BindingsApp(),
      getPages: [
        GetPage(
            name: "/splash",
            page: () => SplashView(),
            middlewares: [AuthMiddleware()]),
        GetPage(name: "/user", page: () => UserView())
      ],
    );
  }
}
