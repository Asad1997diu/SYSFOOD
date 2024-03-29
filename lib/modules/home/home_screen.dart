import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sysfood/modules/home/home_controller.dart';


class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title,
          style: GoogleFonts.nunito(textStyle: const TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold),),),
        centerTitle: true,
        leading: BackButton(),
        backgroundColor: Color(0xFF14B4FF),
        elevation: 0,
      ),
      body: Center(
        child: Text(
          "Home",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

