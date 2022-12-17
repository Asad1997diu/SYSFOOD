import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sysfood/modules/home/home_controller.dart';
import 'package:sysfood/modules/login/login_screens.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        TextButton(
            onPressed: () async {
              final SharedPreferences? prefs = await _prefs;
              prefs?.clear();
              Get.offAll(LogInScreen());
            },
            child: const Text(
              'logout',
              style: TextStyle(color: Colors.white),
            ))
      ]),
      body: Center(
        child: Column(
          children: [
            const Text('Welcome home'),
            TextButton(
                onPressed: () async {
                  final SharedPreferences? prefs = await _prefs;
                  print(prefs?.get('token'));
                },
                child: const Text('print token'))
          ],
        ),
      ),
    );
  }
}

