import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import 'package:flutter_app/local/local_translation.dart';
//
import 'package:flutter_app/utils/settings_services.dart';
//
import 'local/local_bindings.dart';
import 'local/local_view.dart';
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
//
import 'xxx/xxx_bindings.dart';
import 'xxx/xxx_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => SettingServices().init());
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SettingServices ss = Get.find();
    print(ss.local);
    print("----- : App :-------");
    return GetMaterialApp(
      initialRoute: '/sign',
      translations: LocalTranslations(),
      locale: Locale(ss.local),
      fallbackLocale: Locale('en'),
      theme: ss.themeGet(), // Provide light theme.
      getPages: [
        GetPage(
          name: '/splash',
          binding: SplashBindings(),
          page: () => SplashView(),
          // middlewares: [GlobalMiddleware()],
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
        GetPage(
          name: '/local',
          binding: LocalBindings(),
          page: () => LocalView(),
        ),
        GetPage(
          name: '/sign',
          binding: XXXBindings(),
          page: () => XXXView(),
        ),
        GetPage(
          name: '/xxx',
          binding: XXXBindings(),
          page: () => XXXView(),
        )
      ],
    );
  }
}
