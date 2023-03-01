import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vumi_seba/const/app_color.dart';
import 'package:vumi_seba/widgets/custom_textstyle.dart';

import 'bottom_navbar_pages/home_page.dart';
import 'bottom_navbar_pages/record_page.dart';
import 'bottom_navbar_pages/search_page.dart';
import 'bottom_navbar_pages/setting_page.dart';



class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final pages = [HomePage(), SearchPage(), RecordPage(), SettingPage()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.withOpacity(0.2),
      bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.r), topRight: Radius.circular(15.r)),
        child: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: customTextStyle(16, Colors.white),
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
              backgroundColor: AppColor.kDarkGreen,
            ),
            BottomNavigationBarItem(
              label: "Category",
              icon: Icon(Icons.category),
              backgroundColor: AppColor.kDarkGreen,
            ),
            BottomNavigationBarItem(
              label: "Product",
              icon: Icon(Icons.bookmark_border),
              backgroundColor: AppColor.kDarkGreen,
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person),
              backgroundColor: AppColor.kDarkGreen,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),

      body: pages[_currentIndex],
    );
  }
}
