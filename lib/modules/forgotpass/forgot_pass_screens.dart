import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sysfood/modules/forgotpass/forgot_controller.dart';
import 'package:sysfood/widgets/customize_textform.dart';
import '../../widgets/customize_button.dart';

class ForgetPassword extends GetView<ForgotController> {
   ForgetPassword({Key? key}) : super(key: key);

  ForgotController forgotController = Get.put(ForgotController());
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topRight,
                image: AssetImage("assets/images/background.png"),
              )
          ),
          padding: const EdgeInsets.only(top: 20),
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Image.asset("assets/images/Sysfood logo.png"),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                      bottom: 100, left: 20, right: 20, top: 40),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 100),),
                      Text("Forgot Password?",
                        style: GoogleFonts.nunito(textStyle: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),),
                      const Padding(padding: EdgeInsets.only(top: 10),),
                      Text("Please enter the email address associated with your account.",
                        style: GoogleFonts.nunito(textStyle: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),),),
                      const Padding(padding: EdgeInsets.only(
                          top: 30, left: 20, right: 20),),
                      Row(
                        children: [
                          const Icon(Icons.email, size: 15),
                          Text(
                            ' Email',
                            style: GoogleFonts.nunito(
                              textStyle: const TextStyle(color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      CustomizeTextForm(textEditingController: forgotController.emailController),
                      const CustomizeButton(
                        buttonText: "Get Code",
                        buttonColor: Color(0xFFff0036),
                        textColor: Colors.white,
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
