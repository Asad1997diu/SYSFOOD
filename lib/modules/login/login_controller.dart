import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:sysfood/modules/home/home_screen.dart';
import 'package:sysfood/utils/api_endpoints.dart';
import 'package:get/get_connect/http/src/response/response.dart';


class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void loginWithEmail() async {
    try {
      var response = await post(
          Uri.parse(
              ApiEndpoints.baseUrl + ApiEndpoints.authEndpoints.loginEmail),
          body: {
            'email': emailController.text.trim(),
            'password': passwordController.text
          }
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print(data['message']);

        emailController.clear();
        passwordController.clear();
        Get.off(HomeScreen());
      }
      else {
        print('Failed');
        emailController.clear();
        passwordController.clear();
      }
    }
    catch (error) {
      Get.back();
      showDialog(context: Get.context!, builder: (context) {
        return SimpleDialog(
          title: Text('Error'),
          contentPadding: EdgeInsets.all(20),
          children: [Text(error.toString())],
        );
      });
    }
  }
}
