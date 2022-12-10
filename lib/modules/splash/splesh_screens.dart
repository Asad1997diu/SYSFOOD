import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sysfood/generated/assets.dart';
import 'package:sysfood/modules/splash/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFff0036),
              Color(0xFFff6787),
            ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: const [
            AnimatedPositioned(
              duration: Duration(microseconds: 1600),
                top: 300,
                left: 100,
                child: Center(
                  child: Image(image: AssetImage(Assets.imagesSysfoodlogo),),
                ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image(image: AssetImage(Assets.imagesBurger),),
            ),
          ],
        ),
      ),
    );
  }
}

