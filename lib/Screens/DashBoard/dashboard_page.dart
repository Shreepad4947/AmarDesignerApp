import 'package:amardesigner/Login/BasicInfo.dart';
import 'package:amardesigner/Login/SignInOtp.dart';
import 'package:amardesigner/Login/profile_page.dart';
import 'package:amardesigner/Screens/DesignIdeas/DesignIdeas1.dart';
import 'package:amardesigner/Screens/Homepage/HomeScreen.dart';
import 'package:amardesigner/Screens/FindProfessional.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  final User? user = FirebaseAuth.instance.currentUser;
  
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children:  [
                HomeScreen(),
                FindProfessional(),
                DesignIdeas1(),
                //  ProfileSettingsScreen(),
                // user == null? 
                // SignInNum(),
                SignInNum()
                // ProfilePage()
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Color.fromARGB(255, 246, 6, 86),
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: CupertinoIcons.house_fill,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.person_solid,
                label: 'Professionals',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.flame,
                label: 'Design Ideas',
              ),
              // _bottomNavigationBarItem(
              //   icon: CupertinoIcons.shopping_cart,
              //   label: 'Store',
              // ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.bars,
                label: 'More',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}