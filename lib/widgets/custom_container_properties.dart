import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../const/app_color.dart';
import 'custom_textstyle.dart';

Widget customContainerProperties(
    String propertiesText, onTap, IconData iconData) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 120.h,
      width: ScreenUtil().screenWidth * 0.45,
      decoration: BoxDecoration(
        // gradient: LinearGradient(colors: [
        //   AppColor.kPurple,
        //   AppColor.kGreen,
        // ]),

        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0.2,
              0.5,
              0.8,
              0.7
            ],
            colors: [
              Colors.green.shade200,
              Colors.green.shade300,
              Colors.deepPurple.shade400,
              Colors.deepPurple.shade500
            ]),

        borderRadius: BorderRadius.circular(20.r),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey,
        //     blurRadius: 20.0, // Soften the shaodw
        //     spreadRadius: 5.0,
        //     offset: Offset(0.0, 0.0),
        //   )
        // ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundColor: Colors.white,
            child: FaIcon(iconData),
          ),
          Text(
            propertiesText,
            textAlign: TextAlign.center,
            style: customTextStyle(12.sp, AppColor.kWhite, FontWeight.w400),
          ),
        ],
      ),
    ),
  );
}
