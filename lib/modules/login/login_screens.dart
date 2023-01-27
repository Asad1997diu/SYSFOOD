import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sysfood/modules/forgotpass/forgot_pass_screens.dart';
import 'package:sysfood/modules/login/login_controller.dart';
import 'package:sysfood/widgets/customize_button.dart';
import 'package:sysfood/widgets/customize_textform.dart';




class LogInScreen extends GetView<LoginController> {
   LogInScreen({Key? key}) : super(key: key);

   LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage("assets/images/background.png"),
            )
          ),
          padding: const EdgeInsets.only(top: 40),
          height: size.height,
          width: size.width,
          child:Column(
                children: [
                  Image.asset("assets/images/Sysfood logo.png"),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                          bottom: 80, left: 20, right: 20, top: 30),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow:[ BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                        offset: const Offset(5.0,5.0),
                        blurRadius: 10.0,
                        spreadRadius: 2.0)
                        ]),
                      width: size.width,
                      child: Center(
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
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
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
                            ),
                            CustomizeTextForm(textEditingController: loginController.emailController, hinText: 'Email',),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  const Icon(Icons.lock, size: 15),
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
                            ),
                            CustomizeTextForm(textEditingController: loginController.passwordController, hinText: 'Password',),
                            CustomizeButton(
                              buttonText: "Log In",
                              buttonColor: Color(0xFFff0036),
                              textColor: Colors.white,
                              onPressed: () => loginController.loginWithEmail(),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword()),
                                      );
                                    },
                                  child: Text(
                                    "Forgot Password", style: GoogleFonts.nunito(
                                      textStyle: const TextStyle(fontSize: 16,
                                          color: Color(0xFF14B4FF),
                                          fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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

