import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/app_color.dart';
import 'custom_textstyle.dart';

Widget customContainerHeading(String headingText) {
  return Container(
    //height: 50.h,
    padding: EdgeInsets.all(15.w),
    width: ScreenUtil().screenWidth,
    decoration: BoxDecoration(
      color: AppColor.kDarkGreen,
      borderRadius: BorderRadius.circular(10.r),
    ),
    child: Center(
      child: Text(
        headingText,
        textAlign: TextAlign.center,
        style: customTextStyle(16.sp, AppColor.kWhite, FontWeight.w600),
      ),
    ),
  );
}
