import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import '../../routes/app_pages.dart';

class LoginController extends GetxController {
  late TextEditingController emailController,passwordController;
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
    Get.offAllNamed(Routes.LOGIN);
  }
}
