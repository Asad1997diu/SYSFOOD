import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sysfood/routes/app_pages.dart';

void main() async {
 await GetStorage.init();
  runApp(GetMaterialApp(
    title: "SYSFOOD",
    initialRoute: AppPages.INITIAL ,
    getPages: AppPages.routes,
    debugShowCheckedModeBanner: false,
    )
  );
}



