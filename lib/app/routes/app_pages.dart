import 'package:get/get.dart';

import 'package:umbrella/app/modules/home/bindings/home_binding.dart';
import 'package:umbrella/app/modules/home/views/home_view.dart';
import 'package:umbrella/app/modules/login/bindings/login_binding.dart';
import 'package:umbrella/app/modules/login/views/login_view.dart';
import 'package:umbrella/app/modules/root/bindings/root_binding.dart';
import 'package:umbrella/app/modules/root/views/root_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ROOT,
      page: () => RootView(),
      binding: RootBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
