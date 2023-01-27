import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sysfood/modules/profile/profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

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
          "Profile",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}