import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/app_color.dart';
import 'custom_textstyle.dart';

Widget customContainerHeading(String headingText) {
  return Container(
    height: 60.h,
    width: ScreenUtil().screenWidth,
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        AppColor.kPurple,
        AppColor.kGreen,
      ]),
      borderRadius: BorderRadius.circular(20.r),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 20.0, // Soften the shaodw
          spreadRadius: 5.0,
          offset: Offset(0.0, 0.0),
        )
      ],
    ),
    child: Center(
      child: Text(
        headingText,
        style: customTextStyle(16.sp, AppColor.kWhite, FontWeight.w600),
      ),
    ),
  );
}
