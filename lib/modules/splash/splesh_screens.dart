import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sysfood/modules/splash/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          body: Container(
             decoration: const BoxDecoration(
               gradient: LinearGradient(
                 begin: Alignment.topCenter,
                 end: Alignment.bottomCenter,
                 colors: [
                   Color(0xFF14B4FF),
                   Color(0xFF14E8F5),
                 ],
               )
             ),
            child: Container(
              alignment: Alignment.topCenter,
              child: const Padding(
                padding:  EdgeInsets.only(top: 300.0),
                child:  Image(image: AssetImage('assets/images/Sysfood logo.png'),),
              ),
            ),
          ),
        ),
      );
  }
}

