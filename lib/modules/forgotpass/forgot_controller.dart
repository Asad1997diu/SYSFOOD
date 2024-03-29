import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../routes/app_pages.dart';

class ForgotController extends GetxController {
  TextEditingController emailController = TextEditingController();
  final getStorge = GetStorage();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  login() {
    getStorge.write("id", 1);
    getStorge.write("name", "Ripples Code");
    Get.offAllNamed(Routes.FORGOT);
  }
}