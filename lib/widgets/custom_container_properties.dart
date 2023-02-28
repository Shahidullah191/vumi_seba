import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/app_color.dart';
import 'custom_textstyle.dart';

Widget customContainerProperties(
  String propertiesText,
  onTap,
) {
  return InkWell(
    onTap: onTap,
    child: Stack(
      children: [
        Card(
          child: Padding(
            padding: EdgeInsets.all(5.0.w),
            child: SizedBox(
              height: 180.h,
              width: 146.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 8.h,
                  ),
                  Image.asset(
                    "images/icons/icon_all_seba.png",
                    width: 60.w,
                    height: 60.h,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    propertiesText,
                    textAlign: TextAlign.center,
                    style:
                        customTextStyle(14.sp, Colors.black, FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            left: 3.5.w,
            bottom: 0.h,
            right: 3.5.w,
            child: Container(
                height: 35.h,
                width: ScreenUtil().screenWidth,
                decoration: BoxDecoration(
                    color: AppColor.kOlive,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5.r),
                        bottomRight: Radius.circular(5.r))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Details",
                      style: customTextStyle(
                          14.sp, AppColor.kWhite, FontWeight.w600),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 15.w,
                      color: AppColor.kWhite,
                    ),
                  ],
                ))),
      ],
    ),
  );
}
