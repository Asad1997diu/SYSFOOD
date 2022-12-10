import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sysfood/modules/forgotpass/forgot_pass_screens.dart';
import 'package:sysfood/modules/login/login_screens.dart';
import 'package:sysfood/modules/splash/splesh_screens.dart';

import '../modules/login/login_binding.dart';
import '../modules/splash/splash_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => ForgetPassword(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LogInScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashScreen(),
    ),
  ];
}


