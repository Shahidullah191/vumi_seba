import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:vumi_seba/const/app_color.dart';
import 'package:vumi_seba/widgets/custom_textstyle.dart';

import '../vumiseba_dashboard/vumiseba_dashboard.dart';
import 'bottom_navbar_pages/profile.dart';
import 'bottom_navbar_pages/record_page.dart';
import 'bottom_navbar_pages/search_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final pages = [
    VumiSebaDashboard(),
    SearchPage(),
    RecordPage(),
    ProfilePage()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.r), topRight: Radius.circular(12.r)),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          selectedLabelStyle: customTextStyle(16.sp, Colors.white),
          unselectedLabelStyle: customTextStyle(12.sp, Colors.grey),
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              label: "হোম".tr,
              icon: Icon(
                FontAwesomeIcons.house,
              ),
              backgroundColor: AppColor.kDarkGreen,
            ),
            BottomNavigationBarItem(
              label: "অনুরোধ".tr,
              icon: Icon(FontAwesomeIcons.solidHandshake),
              backgroundColor: AppColor.kDarkGreen,
            ),
            BottomNavigationBarItem(
              label: "বিজ্ঞপ্তি".tr,
              icon: Icon(FontAwesomeIcons.solidBell),
              backgroundColor: AppColor.kDarkGreen,
            ),
            BottomNavigationBarItem(
              label: "প্রোফাইল".tr,
              icon: Icon(FontAwesomeIcons.solidCircleUser),
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
