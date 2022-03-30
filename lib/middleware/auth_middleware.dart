import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class GlobalMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    print("redirect:");
    print(route);
    return (route == "/spalsh")
        ? null
        : RouteSettings(
            name: "/xxx",
          );
  }

  @override
  GetPage? onPageCalled(GetPage? page) {
    print("onPageCalled");
    return page;
  }

  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    print("onBindingsStart");
    return bindings;
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    print('Bindings of ${page.toString()} are ready');
    return page;
  }

  @override
  Widget onPageBuilt(Widget page) {
    print('Widget ${page.toStringShort()} will be showed');
    return page;
  }

  @override
  void onPageDispose() {
    print('PageDisposed');
  }
}
