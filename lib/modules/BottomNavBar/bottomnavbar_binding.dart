import 'package:get/get.dart';
import 'package:sysfood/modules/history/history_controller.dart';
import 'package:sysfood/modules/notification/notification_controller.dart';
import 'package:sysfood/modules/profile/profile_controller.dart';
import '../home/home_controller.dart';
import 'bottomnavbar_controller.dart';


class BottomNavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavBarController>(() => BottomNavBarController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<NotificationController>(() => NotificationController());
    Get.lazyPut<HistoryController>(() => HistoryController());
  }
}