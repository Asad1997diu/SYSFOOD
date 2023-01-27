import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sysfood/modules/forgotpass/forgot_bindings.dart';
import 'package:sysfood/modules/forgotpass/forgot_pass_screens.dart';
import 'package:sysfood/modules/history/history_page.dart';
import 'package:sysfood/modules/home/home_screen.dart';
import 'package:sysfood/modules/login/login_screens.dart';
import 'package:sysfood/modules/notification/notification_page.dart';
import 'package:sysfood/modules/profile/profile_pages.dart';
import 'package:sysfood/modules/splash/splesh_screens.dart';
import 'package:sysfood/modules/updateprofile/updatescreen.dart';
import '../modules/BottomNavBar/bottomnavbar_binding.dart';
import '../modules/BottomNavBar/bottomnavbar_screen.dart';
import '../modules/login/login_binding.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/updateprofile/update_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOM;

  static final routes = [
    GetPage(
      name: _Paths.BOTTOM,
      page: () => BottomNavBar(),
      binding: BottomNavBarBinding(),
    ),
    GetPage(
        name: _Paths.HOME,
        page: () => HomeScreen(),
         ),
    GetPage(
      name: _Paths.SPLASH,
      page: () =>  SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () =>  LogInScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT,
      page: () => ForgetPassword(),
      binding: ForgotBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE,
      page: () => UpdateProfile(),
      binding: UpdateBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfilePage(),
       ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationPage(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => HistoryPage(),
    ),
  ];
}


