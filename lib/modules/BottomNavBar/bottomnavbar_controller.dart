import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../routes/app_pages.dart';

class BottomNavBarController extends GetxController {
  var tabIndex = 2;

  void changeTabIndex(int index){
    tabIndex = index;
    update();
  }
}
