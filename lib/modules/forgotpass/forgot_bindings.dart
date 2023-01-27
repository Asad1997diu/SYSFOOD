import 'package:get/get.dart';
import 'package:sysfood/modules/forgotpass/forgot_controller.dart';

class ForgotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotController>(
          () => ForgotController(),
    );
  }
}