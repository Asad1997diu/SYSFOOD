import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:sysfood/modules/BottomNavBar/bottomnavbar_controller.dart';
import 'package:sysfood/modules/home/home_screen.dart';

import '../history/history_page.dart';
import '../notification/notification_page.dart';
import '../profile/profile_pages.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(
        builder: (controller) {
          return Scaffold(
            body: SafeArea(
              child: IndexedStack(
                index: controller.tabIndex,
                children: [
                  ProfilePage(),
                  NotificationPage(),
                  HomeScreen(),
                  HistoryPage(),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.black,
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xFF14B4FF),
              elevation: 0,
              items: [
                _bottomNavigationBarItem(
                  icon: Icons.account_circle,
                  label: 'Profile',
                ),
                _bottomNavigationBarItem(
                  icon: Icons.notifications_active_outlined,
                  label: 'Notification',
                ),
                _bottomNavigationBarItem(
                  icon: Icons.home,
                  label: 'Home',
                ),
                _bottomNavigationBarItem(
                  icon: Icons.history,
                  label: 'History',
                ),
                _bottomNavigationBarItem(
                  icon: Icons.logout,
                  label: 'Logout',
                ),
              ],
            ),
          );
        }
    );
  }
  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
