import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sysfood/utils/baseurl.dart';
import 'package:http/http.dart' as http;
import '../../routes/app_pages.dart';

class LoginController extends GetxController {
  late TextEditingController emailController,passwordController;
  final getStorge = GetStorage();
  @override
  void onInit() {
    super.onInit();

    emailController = TextEditingController();
    passwordController = TextEditingController();
  }
  @override
  void onReady() {
    super.onReady();
  }
  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
  checklogin() {
    if(emailController.text.isEmpty || GetUtils.isEmail(emailController.text) == false) {
      const Text("Email is required");
    }
    else if(passwordController.text.isEmpty) {
      const Text("Email is required");
    }
    else {
      Get.showOverlay(
          asyncFunction: () => login()
      );
    }
  }
  login()async{
    var response = await http.post(Uri.parse(baseurl + 'LoginRequest.php'),
        body: {
          "email": emailController.text,
          "password": passwordController.text,
    });

    var res = await json.decode(response.body);

    if(res['success'])
      {
        Get.offAllNamed(Routes.HOME);
      }
  }
}
