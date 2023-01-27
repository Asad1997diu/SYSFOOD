import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sysfood/modules/updateprofile/update_controller.dart';
import 'package:sysfood/widgets/customize_button.dart';


import '../../widgets/customize_textform.dart';
import '../../widgets/imageprofile.dart';

class UpdateProfile extends GetView<UpdateController> {
   UpdateProfile({Key? key}) : super(key: key);

  UpdateController updateController = Get.put(UpdateController());
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('UPDATE PROFILE',
          style: GoogleFonts.nunito(textStyle: const TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold),),),
        centerTitle: true,
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topRight,
                image: AssetImage("assets/images/background.png"),
              )
          ),
          padding: const EdgeInsets.only(top: 40),
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                      bottom: 50, left: 20, right: 20, top: 100),
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
                      children: [
                        ImagePicker(),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.manage_accounts, size: 15),
                              Text(
                                ' Name',
                                style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomizeTextForm(textEditingController: updateController.nameController, hinText: 'Name',),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.phone, size: 15),
                              Text(
                                ' Phone',
                                style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomizeTextForm(textEditingController: updateController.phoneController, hinText: 'Phone',),
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
                        CustomizeTextForm(textEditingController: updateController.emailController, hinText: 'Email',),
                        CustomizeButton(
                          buttonText: "Update Profile",
                          buttonColor: Color(0xFFff0036),
                          textColor: Colors.white,
                          onPressed: () {},
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ) ,
    );
  }
}
