import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../routes/app_pages.dart';

class SplashController extends GetxController {
  final getStorge = GetStorage();

  @override
  void onReady() {
    super.onReady();
    if (getStorge.read("id") != null) {
      Future.delayed(const Duration(seconds: 5),()
      {
        Get.offAllNamed(Routes.HOME);
      });
    }
    else {
        Get.offAllNamed(Routes.LOGIN);
    }
  }

}
