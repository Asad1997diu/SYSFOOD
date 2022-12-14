import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sysfood/modules/forgotpass/forgot_pass_screens.dart';
import 'package:sysfood/modules/login/login_controller.dart';
import 'package:sysfood/routes/app_pages.dart';
import 'package:sysfood/widgets/customize_button.dart';
import 'package:sysfood/widgets/customize_textform.dart';


class LogInScreen extends GetView<LoginController> {
   LogInScreen({Key? key}) : super(key: key);

   final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
          child:Column(
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
                          const Padding(padding: EdgeInsets.only(top: 30),),
                          Text("Welcome to SYSFOOD",
                            style: GoogleFonts.nunito(textStyle: const TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),),),
                          const Padding(padding: EdgeInsets.only(top: 10),),
                          Text("Please Login to continue",
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
                          const CustomizeTextForm(),
                          Row(
                            children: [
                              Icon(Icons.lock, size: 15),
                              Text(
                                ' Password',
                                style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                          const CustomizeTextForm(),
                          const CustomizeButton(
                            buttonText: "Log In",
                            buttonColor: Color(0xFFff0036),
                            textColor: Colors.white,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPassword()),
                                    );
                                  },
                                child: Text(
                                  "Forgot Password", style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(fontSize: 16,
                                        color: Color(0xFFff0036),
                                        fontWeight: FontWeight.bold)),
                                ),

                              ),
                            ),
                          )
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

