import 'package:flutter/material.dart';
import 'package:flutter_app/utils/settings_services.dart';
import 'package:get/get.dart';
//
import 'middleware/auth_middleware.dart';
//
import 'splash/splash_view.dart';
import 'splash/splash_bindings.dart';
//
import 'todo/todo_view.dart';
import 'todo/todo_bindings.dart';
//
import 'user/user_bindings.dart';
import 'user/user_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => SettingServices().init());
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print("----- : App :-------");
    return GetMaterialApp(
      initialRoute: '/splash',
      getPages: [
        GetPage(
          name: '/splash',
          binding: SplashBindings(),
          page: () => SplashView(),
          middlewares: [GlobalMiddleware()],
        ),
        GetPage(
          name: '/user',
          binding: UserBindings(),
          page: () => UserView(),
        ),
        GetPage(
          name: '/todo',
          binding: TodoBindings(),
          page: () => TodoView(),
        ),
      ],
    );
  }
}
