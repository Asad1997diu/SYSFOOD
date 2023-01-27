import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'history_controller.dart';

class HistoryPage extends GetView<HistoryController> {
  const HistoryPage({super.key});

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
          "History",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}